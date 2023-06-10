import 'TreeNode.dart';

class Tree {
  TreeNode? root;

  void initializeTree(int data) {
      root = TreeNode(data);
  }

  void insertNextData(int data, TreeNode lastNode) {
    if (lastNode.left == null) {
      lastNode.left = TreeNode(data);
    } else if (lastNode.right == null) {
      lastNode.right = TreeNode(data);
    } else if (lastNode.left!.left == null || lastNode.left!.right == null) {
      insertNextData(data, lastNode.left!);
    } else {
      insertNextData(data, lastNode.right!);
    }
  }

  void insertLeft(int data) {
    if (root?.left == null) {
      root?.left = TreeNode(data);
    } else {
      TreeNode newNode = TreeNode(data);
      newNode.left = root?.left;
      root?.left = newNode;
    }
  }

  void insertRight(int data) {
    if (root?.right == null) {
      root?.right = TreeNode(data);
    } else {
      TreeNode newNode = TreeNode(data);
      newNode.right = root?.right;
      root?.right = newNode;
    }
  }
}
