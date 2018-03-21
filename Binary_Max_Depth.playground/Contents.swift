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

let root = TreeNode(3)
let left_1 = TreeNode(9)
let right_1 = TreeNode(20)
let left_2 = TreeNode(15)
let right_2 = TreeNode(7)
root.left = left_1
root.right = right_1
right_1.left = left_2
right_1.right = right_2

func maxDepth(_ root: TreeNode?) -> Int {
    
    var depth = 0
    
    guard let root = root else {
        return depth
    }
    depth += 1
    
    var leftDepth = 0
    var rightDepth = 0
    if let left = root.left {
        leftDepth = maxDepth(left)
    }
    
    if let right = root.right {
        rightDepth = maxDepth(right)
    }
    
    if leftDepth > rightDepth {
        depth += leftDepth
    } else {
        depth += rightDepth
    }
    
    return depth
}

maxDepth(root)

