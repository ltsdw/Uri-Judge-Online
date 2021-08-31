/* title: Estradas Escuras
* number of the problem: 1152
* date: 30/08/21
* author: ltsdw */

#include <iostream>
#include <algorithm>
#include <vector>

using std::vector;

class Graph
{
    private:
        struct edge
        {
            int node_x;
            int node_y;
            int weight;
        };

        vector<edge> graph;
        vector<long> parent;
        vector<long> rank;

        long mst_sum;
        long total;

        int find(const long& node_x)
        {
            if (parent[node_x] == -1) return node_x;

            return parent[node_x] = find(parent[node_x]);
        }

        void merge(const long& node_x, const long& node_y)
        {
            if (rank[node_x] > rank[node_y])
            {
                parent[node_y] = node_x;
                rank[node_x] += rank[node_y];
            } else
            {
                parent[node_x] = node_y;
                rank[node_y] += rank[node_x];
            }
        }

        friend bool operator<(const edge& a, const edge& b);

    public:
        Graph(const long& n_nodes, const long& n_edges) : mst_sum{}, total{}
        {
            for (long i = 0; i < n_nodes; ++i)
            {
                parent.push_back(-1);
                rank.push_back(1);
            }

            for (long i = 0; i < n_edges; ++i)
            {
                using std::cin;
                
                edge temp;
                cin >> temp.node_x >> temp.node_y >> temp.weight;

                graph.push_back(temp);

                total += temp.weight;
            }

            using std::sort;

            sort(graph.begin(), graph.end());
        }

        long mst()
        {
            for (long i = 0; i < (long)graph.size(); ++i)
            {
                const long node_x{find(graph[i].node_x)};
                const long node_y{find(graph[i].node_y)};

                if (node_x != node_y)
                {
                    mst_sum += graph[i].weight;
                    merge(node_x, node_y);
                }
            }

            return total - mst_sum;
        }
};

bool operator<(const Graph::edge& a, const Graph::edge& b)
{
    return (a.weight < b.weight);
}

int main(int argc, const char* argv[])
{
    long n, m;

    while(true)
    {
        std::cin >> n >> m;

        if (n == 0 && m == 0) break;

        std::cout << Graph(n, m).mst() << '\n';
    }

    return EXIT_SUCCESS;
}
