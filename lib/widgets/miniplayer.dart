import 'package:afart_creations/responsiveness/dimensions.dart';
import 'package:flutter/material.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({Key? key}) : super(key: key);

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  @override
  void initState(){
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.padding5),
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Album art.
          Row(
            children: [
              SizedBox(
                height: 60,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Dimensions.miniplayerImageRadius),
                  child: const CircularProgressIndicator(),
                ),
              ),
              SizedBox(width: Dimensions.sizedBoxHorizontalSpace10),
              SizedBox(
                height: 70,
                width: Dimensions.miniplayerInfoContainerWidth,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Titlehhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 
                      style: TextStyle(fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      'Artist',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    )
                  ],
                ),
              )
            ],
          ),
          // Controls.
          Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.skip_previous_sharp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.play_arrow_sharp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.skip_next_sharp),
                    onPressed: () {},
                  ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}
