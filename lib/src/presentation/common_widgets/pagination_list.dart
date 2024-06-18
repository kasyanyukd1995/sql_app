import 'package:colorful_circular_progress_indicator/colorful_circular_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sql_app/src/presentation/index.dart';

class PaginationList extends StatefulWidget {
  final ScrollController? scrollController;
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget Function(BuildContext, int) separatorBuilder;
  final EdgeInsets? padding;
  final ScrollPhysics? physics;
  final int itemCount;
  final bool shrinkWrap;
  final VoidCallback neededLoadNewItems;
  final bool isLoading;
  final Widget? firstWidget;

  const PaginationList({
    this.scrollController,
    required this.itemBuilder,
    required this.separatorBuilder,
    required this.itemCount,
    required this.neededLoadNewItems,
    this.padding,
    this.physics,
    this.firstWidget,
    this.shrinkWrap = false,
    this.isLoading = false,
    super.key,
  });

  @override
  State<PaginationList> createState() => _PaginationListState();
}

class _PaginationListState extends State<PaginationList> {
  ScrollController? _scrollController;

  ScrollController get _effectiveScrollController =>
      widget.scrollController ?? (_scrollController ??= ScrollController());

  @override
  void initState() {
    super.initState();
    _effectiveScrollController.addListener(_onScrollChange);
  }

  void _onScrollChange() {
    if (_effectiveScrollController.position.pixels >=
            _effectiveScrollController.position.maxScrollExtent - 40 &&
        !widget.isLoading) {
      widget.neededLoadNewItems();
    }
  }

  @override
  void dispose() {
    _effectiveScrollController.removeListener(_onScrollChange);
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const progressIndicator = Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorfulCircularProgressIndicator(
          colors: [SqlAppColors.secondaryText],
          strokeWidth: 3,
          indicatorHeight: 25,
          indicatorWidth: 25,
        ),
      ],
    );

    return CustomScrollView(
      shrinkWrap: widget.shrinkWrap,
      physics: widget.physics,
      controller:
          widget.physics is NeverScrollableScrollPhysics ? null : _effectiveScrollController,
      slivers: [
        if (widget.padding?.top != null)
          SliverToBoxAdapter(
            child: SizedBox(height: widget.padding?.top),
          ),
        if (widget.firstWidget != null) SliverToBoxAdapter(child: widget.firstWidget!),
        if (widget.isLoading && widget.itemCount == 0)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: progressIndicator,
            ),
          ),
        SliverList.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(
                left: widget.padding?.left ?? 0,
                right: widget.padding?.right ?? 0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.itemBuilder(context, index),
                  if (widget.isLoading && index == widget.itemCount - 1) ...[
                    const Gap(16),
                    progressIndicator,
                  ],
                ],
              ),
            );
          },
          separatorBuilder: widget.separatorBuilder,
          itemCount: widget.itemCount,
        ),
        if (widget.padding?.top != null)
          SliverToBoxAdapter(
            child: SizedBox(
              height: widget.padding?.bottom,
            ),
          ),
      ],
    );
  }
}
