import Cocoa
import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

// Preordet Binary Tree
func preorderTraversal(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [Int]() }
    var result = [root.val]
    if let left = root.left {
        result += preorderTraversal(left)
        print("left")
    }
    
    if let right = root.right {
        result += preorderTraversal(right)
        print("right")
    }
    if root.left == nil && root.right == nil {
        print("root")
        return result
    }
    return result
}

// [2,3,null,1]
var testNode = TreeNode(3)
var testNodeTwo = TreeNode(1)
testNode.left = testNodeTwo
let testNodeThree = TreeNode(2)
testNode.right = testNodeThree

preorderTraversal(testNode)

