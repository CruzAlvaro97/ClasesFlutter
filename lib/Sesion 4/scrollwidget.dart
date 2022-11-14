import 'package:flutter/material.dart';

class ScrollWidgetPage extends StatefulWidget {
  const ScrollWidgetPage({super.key});

  @override
  State<ScrollWidgetPage> createState() => _ScrollWidgetPageState();
}

class _ScrollWidgetPageState extends State<ScrollWidgetPage> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];

  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {}
    });
  }

  Future fetchData() async {
    //async siempre junto con await
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    isLoading = false;
    setState(() {});

    if ((scrollController.position.pixels + 100) <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(
          milliseconds: 300,
        ),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastId = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);

    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Infinity'),
        centerTitle: true,
        elevation: 0,
      ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: Colors.greenAccent,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imageIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      placeholder: const AssetImage("assets/espera.gif"),
                      image: NetworkImage(
                          "https://picsum.photos/500/300?image=${imageIds[index]}"));
                },
              ),
            ),
            if (isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const LoadingIcono(),
              )
          ],
        ),
      ),
    );
  }
}

class LoadingIcono extends StatelessWidget {
  const LoadingIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: Colors.amberAccent,
      ),
    );
  }
}
