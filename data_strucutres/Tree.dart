import 'TreeNode.dart';

class Tree {
  TreeNode? root;

  void insertData(int data) {
    if (root == null) {
      root = TreeNode(data);
    } else {
      TreeNode newNode = TreeNode(data);
      TreeNode? lastNode = root;
      while (lastNode?.left != null && lastNode?.right != null) {
        if (lastNode?.left?.left != null && lastNode?.left?.right != null) {
          lastNode = lastNode?.right;
        } else {
          lastNode = lastNode?.left;
        }
      } if (lastNode?.left == null) {
        lastNode?.left = newNode;
      } else {
        lastNode?.right = newNode;
      }
    }
  }
}
