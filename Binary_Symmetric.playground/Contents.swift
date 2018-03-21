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

// [1,2,2,3,4,4,3] => true
// [1,2,2,null,3,null,3] => false

func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }    
    return isSymmetricBetween(root.left, root.right)
}

func isSymmetricBetween(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if left == nil && right == nil {
        return true
    }
    
    if left == nil || right == nil {
        return false
    }
    
    if let left = left, let right = right {
        if left.val == right.val && isSymmetricBetween(left.left, right.right) && isSymmetricBetween(left.right, right.left) {
            return true
        } else {
            return false
        }
    }
    return false
}

