import 'package:google_fonts/google_fonts.dart';
import 'package:mygetxtemplate/core/theme/custom_color.dart';

class CustomTextStyle {
  var textStyleWithFont = GoogleFonts.montserrat();

  var textStyleFourteenWithThemeColor = GoogleFonts.montserrat(
      fontSize: 14, color: CustomColor().primaryTextColor);

  var textStyleTwelveWithGreyColor = GoogleFonts.montserrat(
      fontSize: 12, color: CustomColor().secondaryTextColor);
}
