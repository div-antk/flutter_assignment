export 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// この抽象クラスを継承して具体的なステートレスウィジェットを作成することで、Riverpod のフックを利用したステート管理を容易に行うことができる
abstract class AbstractStatelessWidget extends HookConsumerWidget {
  const AbstractStatelessWidget({super.key});
}
