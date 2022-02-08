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
-- Inorder expexted output:             5 -> 6  -> 12 -> 9 -> 1
-- Inorder traversal
function inorderTraversal(node, list)
    if node == nil then
        return
    end

    inorderTraversal(node.left)
    table.insert(list, node.val)
    -- print(string.format("%d ->", node.val))
    inorderTraversal(node.right)

    return list
end

-- TODO: Cover by tests
-- Preorder expexted output:            1 -> 12 -> 5  -> 6 -> 9
-- Preorder traversal
function preorderTraversal(node, list)
    if node == nil then
        return
    end

    table.insert(list, node.val)
    -- print(string.format("%d ->", node.val))
    preorderTraversal(node.left)
    preorderTraversal(node.righ)

    return list
end

function formatList (list)
    message = ""
    
    for key, val in pairs(list) do
        message = message .. string.format("%d ->", val)
    end
    
    return message
end

-- TODO: Cover by tests
-- Postorder expexted output:           5 -> 6  -> 12 -> 9 -> 1
-- PostorderTraversal traversal
function postorderTraversal (node, list)
    if node == nil then
        return
    end

    postorderTraversal(node.left, list)
    postorderTraversal(node.right, list)
    table.insert(list, node.val)
    -- print(string.format("%d ->", node.val))

    return list
end

-- https://www.lua.org/wshop15/Ierusalimschy.pdf
local function check(msg, f, ...)
    local s, err = pcall(f, ...)
    assert(not s and string.find(err, msg))
end

function main ()

    -- //    example 2
    -- //          1
    -- //         / \
    -- //       12    9
    -- //      /  \
    -- //     5    6

    -- node = {
    --     val = 1,
    --     left = {
    --         val = 12,
    --         left = {
    --             val = 5
    --         },
    --         right = {
    --             val = 6
    --         }
    --     },
    --     right = {
    --         val = 9
    --     }
    -- }

    -- //          1
    -- //         / \
    -- //        2   3
    -- //       / \
    -- //      4   5
    -- //     / \
    -- //    6   7

        node = {
            val = 1,
            left = {
                val = 2,
                left = {
                    val = 4,
                    left = {
                        val = 6
                    },
                    righ = {
                        val = 7
                    }
                },
                righ = {
                    val = 5
                }
            },
            righ = {
                val = 3
            }
        }

        message = postorderTraversal(node, {})
        print(formatList(message))

        check("out of limits", pack, "i0", 0)
        -- print(assert( "22" == "23"))
        -- assert(string.find(message ,"6 ->4 ->2 ->1 ->"))
        print('---------------')

        -- postorderTraversal(node, {})
        -- message = formatList(postorderTraversal(node, {}))
        -- print(message)


    -- message = formatList(preorderTraversal(list, {}))
    -- print(message)
    -- print('---------------')
    
    -- message = formatList(inorderTraversal(list, {}))
    -- print(message)
    -- print('---------------')
   
end

main()