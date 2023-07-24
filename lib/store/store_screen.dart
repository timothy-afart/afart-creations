import 'package:afart_creations/widgets/widgets.dart';
import 'package:afart_creations/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../responsiveness/dimensions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    List<String> categories = Category.categories;
    List<Song> songs = Song.songs;

    return Scaffold(
      body: Column(
        children: [
          //Header
          const MainHeader(text: 'Store'),

          //Account balance section
          Container(
            padding: EdgeInsets.only(left: Dimensions.padding10, right: Dimensions.padding10),
             height: Dimensions.containerHeight60,
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Balance: 1,000,000 /=',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                DepositeButton(onPress: () {
                  _showDepositDialog(context); 
                })
              ],
             ),       
          ),

          //main body
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: Dimensions.padding10, right:Dimensions.padding10),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
              
                    //Categories
                    const SectionHeader(text: 'Categories'),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
                    SizedBox(
                      height: Dimensions.categorybuttonHeight,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: ((context, index) {
                          return CategoryButton(text: categories[index]);
                        })
                      )
                    ),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),

                    //Artists section
                    const SectionHeader(text: 'Artists'),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),

                    LayoutBuilder(
                      builder: (context, constraints) {
                        return SizedBox(
                          height: constraints.maxWidth * 0.3, // Adjust the scaling factor as needed
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                            scrollDirection: Axis.horizontal,
                            itemCount: songs.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Artist(song: songs[index]);
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
              
                    //Discover section
                    const SectionHeader(text: 'Discover'),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
                    LayoutBuilder(
                      builder: (context, constraints){
                        return SizedBox(
                          height: 220,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(decelerationRate: ScrollDecelerationRate.fast),
                            scrollDirection: Axis.horizontal,
                            itemCount: songs.length,
                            itemBuilder: (context, index){
                              return DiscoverCard(song: songs[index],);
                            }
                          ),
                        );
                      }
                    ),
                    SizedBox(height: Dimensions.sectionSeparatorHeight),
              
                    //Popular
                    const SectionHeader(text: 'Popular'),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: songs.length,
                      itemBuilder: (context, index){
                        return PopularCard(song: songs[index]);
                      }, 
                      separatorBuilder: (context, index) => const SizedBox(height: 2.0), 
                    ) 
                  ],
                ),
              )
            )
          ),
        ],
      ),
    );
  }
}

//Deposite handling
void _showDepositDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Select Payment Method'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                _showAmountInputDialog(context, 'MTN Mobile Money');
              },
              style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
                  ),
              ),
              child: const Text('MTN Mobile Money'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                _showAmountInputDialog(context, 'Airtel Money');
              },
               style: ElevatedButton.styleFrom(
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
                  ),
              ),
              child: const Text('Airtel Money'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
        ],
      );
    },
  );
}

void _showAmountInputDialog(BuildContext context, String paymentMethod) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Enter Amount to Deposit ($paymentMethod)'),
        content: TextField(
          decoration: const InputDecoration(
            hintText: 'Amount',
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Simulate successful payment
              //_showTransactionResultDialog(context, true);
            },
            child: const Text('Confirm'),
          ),
        ],
      );
    },
  );
}

