/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        if (root == nil) {
            return 0
        }

        if (root!.left == nil && root!.right == nil){
            return 1
        }

        if (root!.left == nil) {
            return 1+maxDepth(root!.right)
        }

        if (root!.right == nil) {
            return 1+maxDepth(root!.left)
        }
        
        return 1+max(maxDepth(root!.left), maxDepth(root!.right))
       
    }
}