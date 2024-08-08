part of core_ui;

class SearchFieldWidget extends StatefulWidget {
  final String query;
  final String hintText;
  final Function onCrossPressed;
  final Function onFilterPressed;
  final Function(String) onSearch;

  const SearchFieldWidget({
    super.key,
    required this.query,
    required this.hintText,
    required this.onSearch,
    required this.onCrossPressed,
    required this.onFilterPressed,
  });

  @override
  _SearchFieldWidgetState createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  final TextEditingController textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    widget.query != '' ? textController.text = widget.query : null;
    super.initState();
  }

  String value = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppWidgetTheme.shadowColor,
            offset: const Offset(0, 10),
            spreadRadius: -5,
            blurRadius: 12,
          ),
        ],
      ),
      child: TextFormField(
        cursorColor: AppTextTheme.hintColor,
        onFieldSubmitted: widget.onSearch,
        onChanged: (String val) => setState(() => value = val),
        focusNode: _focusNode,
        controller: textController,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppWidgetTheme.primaryColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppWidgetTheme.primaryColor,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppWidgetTheme.primaryColor,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppWidgetTheme.primaryColor,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: widget.hintText,
          hintStyle: AppTextTheme.manrope16Light.copyWith(
            color: AppTextTheme.hintColor,
          ),
          prefixIcon: AppIconTheme.search(color: AppIconTheme.primaryColor),
        ),
      ),
    );
  }
}
