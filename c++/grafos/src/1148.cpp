/* title: Países em Guerra
* number of the problem: 1148
* date: 11/09/21
* author: ltsdw */

#include <iostream>
#include <vector>
#include <queue>

class Graph
{
    private:
        typedef int Node;
        typedef int Eta;

        struct greater : std::binary_function <std::pair<Node, Eta>, std::pair<Node, Eta>, bool> {
          bool operator() (const std::pair<Node, Eta>& x, const std::pair<Node, Eta>& y) const {return x.second > y.second;}
        };

        std::vector<std::pair<Node, Eta>>* adjacencies;

        int n_nodes;

        std::pair<std::pair<Node, Eta>*, bool> is_node_present(
                std::vector<std::pair<Node, Eta>>& adjacencies_,
                const int& node)
        {
            using std::pair, std::vector;

            pair<Node, Eta>* begin{&adjacencies_[0]};
            pair<Node, Eta>* end{begin + adjacencies_.size()};

            for (auto adj{begin}; adj != end; ++adj)
            {
                if (adj && adj->first == node) return {adj, true}; 
            }

            return {begin, false};
        }

        void update_eta(std::pair<Node, Eta>* it)
        {
            if (it) *it = {it->first, 0};
        }

    public:
        Graph(const int& n, int& e) : n_nodes{n+1}
        {
            using std::vector, std::pair, std::cin;

            //adjacencies = (vector<pair<Node, Eta>>*) malloc(sizeof(vector<pair<Node, Eta>>) * n_nodes);
            adjacencies = new vector<pair<Node, Eta>>[n_nodes];

            int x, y, h;

            if (adjacencies)
            {
                while (e--)
                {
                    cin >> x >> y >> h;

                    adjacencies[x].push_back({y, h});
                }

                for (Node i{1}; i < n_nodes; ++i)
                {
                    for (pair<Node, Eta> adj : adjacencies[i])
                    {
                        int x{i};
                        int y{adj.first};
                        pair<pair<Node, Eta>*, bool> dum_x{is_node_present(adjacencies[x], y)};
                        pair<pair<Node, Eta>*, bool> dum_y{is_node_present(adjacencies[y], x)};

                        if (dum_x.second && dum_y.second)
                        {
                            update_eta(dum_x.first);
                            update_eta(dum_y.first);
                        }
                    }
                }
            }
        }

        int* dijkstra(const int& src, const int& dest)
        {

            if (!adjacencies) return 0;

            using std::priority_queue, std::pair, std::vector;

            priority_queue<pair<Node, Eta>, vector<pair<Node, Eta>>, greater> p_queue;

            p_queue.push({src, 0});
 
            vector<Eta*> v_eta(n_nodes, nullptr);

            v_eta[src] = new int(0);

            while(!p_queue.empty())
            {
                int c_node = p_queue.top().first;
                int c_eta  = p_queue.top().second;

                p_queue.pop();

                if (c_eta != *v_eta[c_node]) continue;

                for (pair<Node, Eta> adj : adjacencies[c_node])
                {
                    if (!v_eta[adj.first])
                    {
                        v_eta[adj.first] = new int(c_eta + adj.second);

                        p_queue.push({adj.first, *v_eta[adj.first]});
                        continue;
                    }

                    if (c_eta + adj.second < *v_eta[adj.first])
                    {
                        *v_eta[adj.first] = c_eta + adj.second;
                        p_queue.push({adj.first, *v_eta[adj.first]});
                    }
                }
            }

            return v_eta[dest];
        }

        ~Graph()
        {
            if (adjacencies) delete[] adjacencies;
        }
};

int main(int argc, const char* argv[])
{
    using std::cin, std::cout;

    while (true)
    {
        int n, e;
        cin >> n >> e;

        if (n == 0 && e == 0) break;

        Graph graph{n, e};

        int k;
        cin >> k;

        while (k--)
        {
            int source, destination;
            cin >> source >> destination;

            int* result{graph.dijkstra(source, destination)};

            if (result) cout << *result << '\n';
            else cout << "Nao e possivel entregar a carta" << '\n';
        }

        cout << '\n';
    }

    return EXIT_SUCCESS;
}
