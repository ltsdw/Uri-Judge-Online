/* title: Estradas Escuras
* number of the problem: 1152
* date: 31/08/21
* author: ltsdw */

#include <iostream>

class Node
{
    private:
        int parent;
        Node* left_leaf;
        Node* right_leaf;

        void pre_order(const Node* node)
        {
            using std::cout;

            if (!node) return;

            cout << ' ' << node->get_parent();

            pre_order(node->left_leaf);
            pre_order(node->right_leaf);
        }

        void in_order(const Node* node)
        {
            using std::cout;

            if (!node) return;

            in_order(node->left_leaf);

            cout << ' ' << node->get_parent();

            in_order(node->right_leaf);
        }

        void pos_order(const Node* node)
        {
            using std::cout;

            if (!node) return;

            pos_order(node->left_leaf);
            pos_order(node->right_leaf);

            cout << ' ' << node->get_parent();
        }

    public:
        Node() : left_leaf{nullptr}, right_leaf{nullptr} {}

        Node(const int& data) : parent{data}, left_leaf{nullptr}, right_leaf{nullptr} {}

        Node* insert(Node* node, const int& data)
        {
            if (!node) return new Node(data);

            if (data >= node->get_parent()) node->right_leaf = node->insert(node->right_leaf, data);
            else node->left_leaf = insert(node->left_leaf, data);

            return node;
        }

        int get_parent() const {return parent;}

        void pretty_print(const int& c = 0)
        {
            using std::cout;

            cout << "Case " << c << ":" << '\n';
            cout << "Pre.:"; pre_order(this); cout << '\n';
            cout << "In..:"; in_order(this); cout << '\n';
            cout << "Post:"; pos_order(this); cout << '\n';
        }
};

int main(int argc, const char* argv[])
{
    using std::cin, std::cout;

    int n_cases;
    cin >> n_cases;

    for (int i = 1; i <= n_cases; ++i)
    {
        Node* node{nullptr};

        int n_nodes;
        cin >> n_nodes;

        for (int j = 0; j < n_nodes; ++j)
        {
            int data;
            cin >> data;

            if (!node) node = new Node(data);
            else node->insert(node, data);
        }
   
        if (node) node->pretty_print(i);

        cout << '\n';

        delete node;
    }

    return EXIT_SUCCESS;
}
