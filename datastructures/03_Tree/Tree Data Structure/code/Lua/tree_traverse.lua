-- //    example 1
-- //          1
-- //         / \
-- //        2   3
-- //       / \
-- //      4   5
-- //     / \
-- //    6   7
-- //    6 -> 4 -> 7 -> 5 -> 2 -> 3 -> 1

-- //    example 2
-- //          1
-- //         / \
-- //       12    9
-- //      /  \
-- //     5    6

-- TODO: Cover by tests
-- Inorder expexted output:     5 -> 6  -> 12 -> 9 -> 1
-- Inorder traversal
function inorderTraversal(node) 
    if node == nil then
        return
    end

    inorderTraversal(node.left)
    print(string.format("%d ->", node.val))
    inorderTraversal(node.right)
end

-- TODO: Cover by tests
-- Preorder expexted output:    1 -> 12 -> 5  -> 6 -> 9
-- Preorder traversal
function preorderTraversal(node)
    if node == nil then
        return
    end

    print(string.format("%d ->", node.val))
    preorderTraversal(node.left)
    preorderTraversal(node.righ)
end

-- TODO: Cover by tests
-- Postorder expexted output:   5 -> 6  -> 12 -> 9 -> 1
-- PostorderTraversal traversal
function postorderTraversal (node)

    if node == nil then
        return
    end

    postorderTraversal(node.left)
    postorderTraversal(node.right)
    print(string.format("%d ->", node.val))
end

function main ()
    node = {
        val = 1,
        left = {
            val = 12,
            left = {
                val = 5
            },
            right = {
                val = 6
            }
        },
        right = {
            val = 9
        }
    }

    -- postorderTraversal(node)
    -- print('---------------')

    preorderTraversal(node)
    print('---------------')
    
    -- inorderTraversal(node)
    -- print('---------------')
end

main()