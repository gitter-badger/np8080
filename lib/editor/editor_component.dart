import 'package:angular2/core.dart';
import 'package:np8080/dialog/about/about_component.dart';
import 'package:np8080/dialog/generate/generate_component.dart';
import 'package:np8080/dialog/replace/replace_component.dart';
import 'package:np8080/document/textdocument.dart';
import 'package:np8080/editor/preview_component.dart';
import 'package:np8080/editor/status_component.dart';
import 'package:np8080/toolbar/toolbar_component.dart';

@Component(
    selector: 'plain-editor',
    templateUrl: 'editor_component.html',
    directives: const [
      StatusComponent,
      ToolbarComponent,
      AboutDialogComponent,
      GenerateDialogComponent,
      ReplaceDialogComponent,
      PreviewComponent
    ])
class EditorComponent {

  final String placeHolderText = """
  Welcome to Notepad 8080!

  Notepad 8080 is a simple web based text editor in your browser. It is free to use and Open Source software.

  Your data is automatically stored in your web browser's local storage and NOT on any server.

  Click the download button to save the text as a file.

  You can change the filename by clicking on the name in the top left.

  Click 'About' to learn even more.""";

  @Input()
  TextDocument note;

  bool showAboutDialog = false;

  bool showGenerateDialog = false;

  bool showReplaceDialog = false;

  bool showPreview = false;

  void changeHandler() {
    note.save();
  }

}
