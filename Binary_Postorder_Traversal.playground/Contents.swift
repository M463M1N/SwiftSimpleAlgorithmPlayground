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

// Postorder Traversal
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [Int]() }
    var result = [Int]()
    if let left = root.left {
        result = postorderTraversal(left)
    }
    if let right = root.right {
        result += postorderTraversal(right)
    }
    result.append(root.val)
    return result
}

let result = postorderTraversal(rootNode)
print(result)
