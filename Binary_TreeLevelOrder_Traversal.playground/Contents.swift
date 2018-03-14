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

// Binary Tree [3,9,20,null,null,15,7]
let rootNode = TreeNode(3)
let leftNodeLevelOne = TreeNode(9)
let rightNodeLevelOne = TreeNode(20)
rootNode.left = leftNodeLevelOne
rootNode.right = rightNodeLevelOne
let leftNodeLevelTwo = TreeNode(15)
let rightNodeLevelTwo = TreeNode(7)
rightNodeLevelOne.left = leftNodeLevelTwo
rightNodeLevelOne.right = rightNodeLevelTwo

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var result = [[Int]]()
    guard let root = root else { return result }
    result.append([root.val])
    
    if let left = root.left {
        let leftResult = levelOrder(left)
        for levelData in leftResult.enumerated() {
            result.append(levelData.element)
        }
    }
    
    if let right = root.right {
        let rightResult = levelOrder(right)
        for levelData in rightResult.enumerated() {
            if result.count > levelData.offset + 1 {
                result[levelData.offset + 1].append(contentsOf: levelData.element)
            } else {
                result.append(levelData.element)
            }
        }
    }
    return result
}

print(levelOrder(rootNode))
