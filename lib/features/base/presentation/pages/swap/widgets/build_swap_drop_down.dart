part of 'swap_widgets_imports.dart';

class BuildSwapDropDown extends StatefulWidget {
  final SwapData swapData;

  const BuildSwapDropDown({Key? key, required this.swapData}) : super(key: key);

  @override
  State<BuildSwapDropDown> createState() => _BuildSwapDropDownState();
}

class _BuildSwapDropDownState extends State<BuildSwapDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: FindDropdown<DropDownEntity>(
        constraints: BoxConstraints.expand(height: MediaQuery.of(context).size.height*.2),
        items: widget.swapData.items,
        dropdownBuilder: (BuildContext context, DropDownEntity? item) {
          if (item?.name == null) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: MyColors.white,
              shadowColor: MyColors.primary.withOpacity(.2),
              elevation: 4,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: MyText(
                          title: "select", color: MyColors.black, size: 10),
                    ),
                    Icon(Icons.keyboard_arrow_down_rounded,size: 15,),
                  ],
                ),
              ),);
          } else {
            return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: MyColors.white,
                shadowColor: MyColors.primary.withOpacity(.2),
                elevation: 4,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        item?.img ?? "",
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(width: 5,),
                      Expanded(
                        child: MyText(
                            title: item?.name ?? "",
                            color: MyColors.black,
                            size: 12),
                      ),
                      Icon(Icons.keyboard_arrow_down_rounded,size: 15,),
                    ],
                  ),
                ),);
          }
        },
        dropdownItemBuilder:
            (BuildContext context, DropDownEntity? item, bool isSelected) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SvgPicture.asset(
                  item!.img,
                  width: 25,
                  height: 25,
                ),
                const SizedBox(width: 10,),
                MyText(title: item.name, color: MyColors.black, size: 15),
              ],
            ),
          );
        },
        // items: widget.swapData.items2,
        onChanged: (DropDownEntity? data) {
          print(data);
        },
      ),
    );
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        color: MyColors.white,
        size: 25,
      ),
      onSelected: (value) {},
      itemBuilder: (BuildContext bc) => List.generate(
        widget.swapData.items.length,
        (index) => PopupMenuItem(
          value: index + 1,
          child: Row(
            children: [
              SvgPicture.asset(
                widget.swapData.items[index].img,
                width: 15,
                height: 15,
              ),
              MyText(
                title: widget.swapData.items[index].name,
                size: 9,
                color: MyColors.black,
              ),
            ],
          ),
          height: 30,
        ),
      ),
    );
    return BlocBuilder<GenericBloc<DropDownEntity?>,
        GenericState<DropDownEntity?>>(
      bloc: widget.swapData.dropDownCubit,
      builder: (context, state) {
        return Center(
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<DropDownEntity>(
              hint: Text(
                'Select',
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).hintColor,
                ),
              ),
              items: widget.swapData.items
                  .map((item) => DropdownMenuItem<DropDownEntity>(
                        value: item,
                        child: Row(
                          children: [
                            // Container(width: 15,height: 15,child: SvgPicture.asset(Res.futira,width: 15,height: 15,)),
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
              value: state.data,
              onChanged: (DropDownEntity? value) {
                widget.swapData.dropDownCubit.onUpdateData(value);
              },
              buttonHeight: 40,
              buttonWidth: 100,
              itemHeight: 40,
            ),
          ),
        );
      },
    );
  }
}
