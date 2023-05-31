import 'TreeNode.dart';

class Tree {
  TreeNode? root;

  void insertData(int data) {
    if (root == null) {
      root = TreeNode(data);
    } else {
      TreeNode newNode = TreeNode(data);
      TreeNode? lastNode = root;
      TreeNode? previousLastNode;
      TreeNode? tempNode;
      while (lastNode?.left != null && lastNode?.right != null) {
          if (lastNode?.left?.left == null || lastNode?.left?.right == null) {
            previousLastNode = lastNode;
            lastNode = lastNode?.left;
          } else if (previousLastNode?.right?.left == null || previousLastNode?.right?.right == null){
            tempNode = lastNode;
            lastNode = previousLastNode?.right;
            previousLastNode = tempNode;
          } else {
            lastNode = previousLastNode?.left;
          }
      }
      if (lastNode?.left == null) {
        lastNode?.left = newNode;
      } else {
        lastNode?.right = newNode;
      }
    }
  }
}
