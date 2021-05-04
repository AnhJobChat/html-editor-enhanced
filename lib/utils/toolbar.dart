import 'package:flutter/material.dart';

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final Widget boldIcon;
  final bool italic;
  final Widget italicIcon;
  final bool underline;
  final Widget underlineIcon;
  final bool clearAll;
  final Widget clearAllIcon;
  final bool strikethrough;
  final Widget strikethroughIcon;
  final bool superscript;
  final Widget superscriptIcon;
  final bool subscript;
  final Widget subscriptIcon;

  const FontButtons({
    this.bold = true,
    this.boldIcon,
    this.italic = true,
    this.italicIcon,
    this.underline = true,
    this.underlineIcon,
    this.clearAll = true,
    this.clearAllIcon,
    this.strikethrough = true,
    this.strikethroughIcon,
    this.superscript = true,
    this.superscriptIcon,
    this.subscript = true,
    this.subscriptIcon,
  });

  List<Widget> getIconDisplay1() {
    var icons = <Widget>[];
    if (bold) icons.add(boldIcon ?? Icon(Icons.format_bold));
    if (italic) icons.add(italicIcon ?? Icon(Icons.format_italic));
    if (underline) icons.add(underlineIcon ?? Icon(Icons.format_underline));
    if (clearAll) icons.add(clearAllIcon ?? Icon(Icons.format_clear));
    return icons;
  }

  List<Widget> getIconDisplay2() {
    var icons = <Widget>[];
    if (strikethrough) icons.add(strikethroughIcon ?? Icon(Icons.format_strikethrough));
    if (superscript) icons.add(superscriptIcon ?? Icon(Icons.superscript));
    if (subscript) icons.add(subscriptIcon ?? Icon(Icons.subscript));
    return icons;
  }

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold) icons.add(Icon(Icons.format_bold));
    if (italic) icons.add(Icon(Icons.format_italic));
    if (underline) icons.add(Icon(Icons.format_underline));
    if (clearAll) icons.add(Icon(Icons.format_clear));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (strikethrough) icons.add(Icon(Icons.format_strikethrough));
    if (superscript) icons.add(Icon(Icons.superscript));
    if (subscript) icons.add(Icon(Icons.subscript));
    return icons;
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor) icons.add(Icon(Icons.format_color_text));
    if (highlightColor) icons.add(Icon(Icons.format_color_fill));
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final Widget bulletIcon;
  final bool ol;
  final Widget numberedIcon;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.bulletIcon,
    this.ol = true,
    this.numberedIcon,
    this.listStyles = true,
  });

  List<Widget> getIconDisplay() {
    var icons = <Widget>[];
    if (ul) icons.add(bulletIcon ?? Icon(Icons.format_list_bulleted));
    if (ol) icons.add(numberedIcon ?? Icon(Icons.format_list_numbered));
    return icons;
  }

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul) icons.add(Icon(Icons.format_list_bulleted));
    if (ol) icons.add(Icon(Icons.format_list_numbered));
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft) icons.add(Icon(Icons.format_align_left));
    if (alignCenter) icons.add(Icon(Icons.format_align_center));
    if (alignRight) icons.add(Icon(Icons.format_align_right));
    if (alignJustify) icons.add(Icon(Icons.format_align_justify));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (increaseIndent) icons.add(Icon(Icons.format_indent_increase));
    if (decreaseIndent) icons.add(Icon(Icons.format_indent_decrease));
    return icons;
  }
}

/// Insert group
class InsertButtons extends Toolbar {
  final bool link;
  final bool picture;
  final bool audio;
  final bool video;
  final bool otherFile;
  final bool table;
  final bool hr;

  const InsertButtons({
    this.link = true,
    this.picture = true,
    this.audio = true,
    this.video = true,
    this.otherFile = false,
    this.table = true,
    this.hr = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (link) icons.add(Icon(Icons.link));
    if (picture) icons.add(Icon(Icons.image_outlined));
    if (audio) icons.add(Icon(Icons.audiotrack_outlined));
    if (video) icons.add(Icon(Icons.videocam_outlined));
    if (otherFile) icons.add(Icon(Icons.attach_file));
    if (table) icons.add(Icon(Icons.table_chart_outlined));
    if (hr) icons.add(Icon(Icons.horizontal_rule));
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (fullscreen) icons.add(Icon(Icons.fullscreen));
    if (codeview) icons.add(Icon(Icons.code));
    if (undo) icons.add(Icon(Icons.undo));
    if (redo) icons.add(Icon(Icons.redo));
    if (help) icons.add(Icon(Icons.help_outline));
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (copy) icons.add(Icon(Icons.copy));
    if (paste) icons.add(Icon(Icons.paste));
    return icons;
  }
}
