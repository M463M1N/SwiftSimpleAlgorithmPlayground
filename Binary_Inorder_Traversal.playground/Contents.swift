import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

// Binary Tree [1, null, 2, 3]
let rootNode = TreeNode(1)
let rightNodeLevelOne = TreeNode(2)
rootNode.right = rightNodeLevelOne
let leftNodeLevelTwo = TreeNode(3)
rightNodeLevelOne.left = leftNodeLevelTwo

// Inorder Traversal
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [Int]() }
    var result = [Int]()
    if let left = root.left {
        result = inorderTraversal(left)
    }
    
    result.append(root.val)
    if let right = root.right {
        result += inorderTraversal(right)
    }
    return result
}

let result = inorderTraversal(rootNode)
print(result)
