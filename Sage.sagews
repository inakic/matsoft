︠ba74242b-ef78-45ea-b51a-9282307e97e0i︠
%md
# Sage II
︡ef18ef36-b47b-48e1-b121-a166ee286866︡{"done":true,"md":"# Sage II"}
︠434fb97e-9d8d-4f83-8912-b32af76b6850is︠
%md
# Linearna algebra
︡7f25b86d-685c-4fb4-bd3b-f8e6b2a23f4a︡{"md":"# Linearna algebra\n"}︡
︠7903e93f-9366-4aa1-990b-dcffd9f991dei︠
%md
### Vektorski prostori i vektori
︡0c4a87b3-c6e4-4768-9787-cf372210bcfa︡{"html":"<h3>Vektorski prostori i vektori</h3>\n"}︡
︠b6919a0f-cbfa-4017-bb0f-885c94a1e0e0s︠
R3 = VectorSpace(QQ, 3)
(b1, b2, b3) = R3.basis()
b1, b2, b3

vector1 = R3([-1, 2, 7])
vector2 = R3([4, -9, 2])
var('a b')
a * vector1 + b * vector2
︡598aaa1c-e2df-450c-a709-c5b0a7b5cacb︡{"stdout":"((1, 0, 0), (0, 1, 0), (0, 0, 1))\n"}︡{"stdout":"(a, b)\n"}︡{"stdout":"(-a + 4*b, 2*a - 9*b, 7*a + 2*b)"}︡{"stdout":"\n"}︡{"done":true}︡
︠efb7dfd7-bef2-4247-aec0-6ce13c1ad0e0s︠
sqrt(vector1 * vector1)
vector1.norm()
vector1.norm(2)
vector1.norm(Infinity)
︡b32839d4-03c4-4b04-a2d4-080cdb94836b︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"7\n"}︡{"done":true}︡
︠1c284c75-080e-4534-80e5-83f63d684730s︠
2 * vector1
vector1 * vector2
vector1.dot_product(vector2)
vector1.cross_product(vector2)
︡bcfdc0aa-c6fe-4902-91ec-334b37456245︡{"stdout":"(-2, 4, 14)\n"}︡{"stdout":"-8\n"}︡{"stdout":"-8\n"}︡{"stdout":"(67, 30, 1)\n"}︡{"done":true}︡
︠58f19444-ee7e-42c9-b892-64b9b26a0b2bi︠
%md
Naredba `VectorSpace` kreira vektorski prostor gdje je prvi parametar polje a drugi dimenzija. Tipičan izbor su **ZZ**, **QQ**, **RQ** i **CC**, no Sage podržava izuzetno velik broj polja.
︡b0f961a3-2ce3-42b2-82b7-9bcafd3a444d︡{"done":true,"md":"Naredba `VectorSpace` kreira vektorski prostor gdje je prvi parametar polje a drugi dimenzija. Tipičan izbor su **ZZ**, **QQ**, **RQ** i **CC**, no Sage podržava izuzetno velik broj polja."}
︠d31d9bf7-b3da-4e9e-8992-b4c2997e1bd8s︠
u = vector(QQ, [1, 2/7, 10/3])
u[1]
︡13789e27-8756-401d-bbc5-de4fcdac2722︡{"stdout":"2/7\n"}︡{"done":true}︡
︠cf91747a-68dc-4eac-af46-85c0e5bde0c4s︠
u[:2]
︡d123a133-730f-4bad-a993-99cbc4cbdbb0︡{"stdout":"(1, 2/7)\n"}︡{"done":true}︡
︠83dc5aa3-bd19-40d8-bd5f-13e6a26a96ces︠
u[2] = numerical_approx(pi, digits=5)
u
︡63497bb5-000a-47fa-979a-705d956c02f9︡{"stdout":"(1, 2/7, 355/113)\n"}︡{"done":true}︡
︠ba02b9d0-e15b-49a2-aa67-1573f594a982i︠
%md
### Matrice
︡cd6dcc00-ec77-4271-a1dc-88376576b8e1︡{"html":"<h3>Matrice</h3>\n"}︡
︠a3e7f758-15b8-4512-be66-cc3d2b1cceb6s︠
M4 = MatrixSpace(QQ, 4)
show(M4.identity_matrix())
︡a2648426-c7b1-4753-a541-4e8e0158f24c︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠01ca87c8-9341-467c-8121-d8b61449fdacs︠
M34 = MatrixSpace(QQ, 3, 4)
show(M34.basis())
︡ee33ab52-094f-4662-82de-190a9064ceae︡{"html":"<div align='center'>[$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$]</div>"}︡{"done":true}︡
︠a3b3ddd4-59cf-426d-a16e-e076f9129251s︠
A = M4.matrix([[0, -1, -1, 1], [1, 1, 1, 1], [2, 4, 1, -2],
       [3, 1, -2, 2]])
b = vector(QQ, [0, 6, -1, 3])
show(A)
show(b)
A.solve_right(b)
A\b
︡e3b6475d-8754-4516-a932-7bd999d42385︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; -1 &amp; -1 &amp; 1 \\\\\n1 &amp; 1 &amp; 1 &amp; 1 \\\\\n2 &amp; 4 &amp; 1 &amp; -2 \\\\\n3 &amp; 1 &amp; -2 &amp; 2\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0,\\,6,\\,-1,\\,3\\right)$</div>"}︡{"stdout":"(2, -1, 3, 2)\n"}︡{"stdout":"(2, -1, 3, 2)\n"}︡{"done":true}︡
︠5b1a860c-ea71-4658-b41c-21728b61f555s︠
A[1]
︡33ebfaec-76e8-4e0a-a4d7-c8fa1f0350b2︡{"stdout":"(1, 1, 1, 1)\n"}︡{"done":true}︡
︠94c490f4-9fac-413e-8f6e-bd86cecfd18cs︠
A[:,0]
︡92a63b1f-ac2c-439b-a875-f079959d94bc︡{"stdout":"[0]\n[1]\n[2]\n[3]\n"}︡{"done":true}︡
︠a0e0c0ea-84ce-4bb3-9156-99ac73db4882s︠
A[:,1] = vector([1,1,1,0])
A
︡c53d4177-26b4-48c9-87e9-6f3c99bf63a2︡{"stdout":"[ 0  1 -1  1]\n[ 1  1  1  1]\n[ 2  1  1 -2]\n[ 3  0 -2  2]\n"}︡{"done":true}︡
︠fc328dc8-c84b-4f4b-b884-e3340232adb1s︠
A.row(2)
A.column(2)
︡d1584682-cb94-4292-b400-7ec309ff1533︡{"stdout":"(2, 1, 1, -2)\n"}︡{"stdout":"(-1, 1, 1, -2)\n"}︡{"done":true}︡
︠411b9edb-1dcf-4ac3-b7d9-f3d5476c6811s︠
A.submatrix(2, 2, 2, 2)
︡ba0e5690-50ac-45f0-beba-0c0ef40b0770︡{"stdout":"[ 1 -2]\n[-2  2]\n"}︡{"done":true}︡
︠f1e4156d-a924-4464-9109-77e24be2de82s︠
A = Matrix(QQ, [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
A.rescale_row(1, 2)
A
︡e3016bb6-70d0-4b36-8eeb-73939ada7768︡{"stdout":"[ 1  2  3]\n[ 8 10 12]\n[ 7  8  9]\n"}︡{"done":true}︡
︠b0860180-a404-407f-a544-b9a1d12433e0s︠
A.swap_rows(0, 1)
A
︡e0719fad-4ceb-4049-b942-007260a08aa6︡{"stdout":"[ 8 10 12]\n[ 1  2  3]\n[ 7  8  9]\n"}︡{"done":true}︡
︠e58760de-6554-4e6a-997d-67191421e1f8s︠
A.add_multiple_of_row(0, 1 ,3)
A
︡02a46837-f6d5-4dcb-bd0e-78cc5ccf9f54︡{"stdout":"[11 16 21]\n[ 1  2  3]\n[ 7  8  9]\n"}︡{"done":true}︡
︠d54a5ea7-61c4-4cfb-842e-4cb65217cea8s︠
A.echelon_form() #Gaussova eliminacija
︡4a5c8dc4-73e0-4d23-a0f2-a8c6d57c8dd4︡{"stdout":"[ 1  0 -1]\n[ 0  1  2]\n[ 0  0  0]\n"}︡{"done":true}︡
︠8574d347-fe3b-4484-8ba3-0b32df38e463s︠
M3 = MatrixSpace(QQ, 2, 3)
A = M3.matrix([[3, 2, 1], [4, 5, 6]])
B = M3.matrix([[2, 2, 2], [1, 2, 3]])
show(A+B)
show(1/2*A)
︡b5e24b78-8cd9-452b-8f91-29db2290a212︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n5 &amp; 4 &amp; 3 \\\\\n5 &amp; 7 &amp; 9\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n\\frac{3}{2} &amp; 1 &amp; \\frac{1}{2} \\\\\n2 &amp; \\frac{5}{2} &amp; 3\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠ad11368c-0352-47e7-b39f-547ab85030ces︠
var('a b c d e f')
C = Matrix(QQ, [[4, 2, 1], [5, 3, 7]])
D = Matrix(SR, [[a, b], [c, d], [e, f]])
show(C * D)
︡22637370-9eb9-4c25-ab6a-da0e46643834︡{"stdout":"(a, b, c, d, e, f)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n4 \\, a + 2 \\, c + e &amp; 4 \\, b + 2 \\, d + f \\\\\n5 \\, a + 3 \\, c + 7 \\, e &amp; 5 \\, b + 3 \\, d + 7 \\, f\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠24d75cb8-c157-4be4-8c11-e07e562eb6des︠
type(D)
︡be4260c9-e5b5-4e1d-be17-8d3baeb89984︡{"stdout":"<type 'sage.matrix.matrix_symbolic_dense.Matrix_symbolic_dense'>\n"}︡{"done":true}︡
︠03b227ef-873c-4a89-8669-6936cf1d75d7s︠
var('x1 x2 x3')
X = vector([x1,x2,x3])
show(C * X)
︡3ffe12cf-0e8d-4302-a4d0-83a2a4503e78︡{"stdout":"(x1, x2, x3)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(4 \\, x_{1} + 2 \\, x_{2} + x_{3},\\,5 \\, x_{1} + 3 \\, x_{2} + 7 \\, x_{3}\\right)$</div>"}︡{"done":true}︡
︠4424c67a-8f69-45d1-86ed-4f3098690689s︠
A = matrix(QQ, [[2, 5, 4], [3, 1, 2], [5, 4, 6]])
A.det()
A.rank()
A.transpose()
A.adjoint()
A.inverse()
︡59396e6a-822a-494b-ad8f-b85a9536c59d︡{"stdout":"-16\n"}︡{"stdout":"3\n"}︡{"stdout":"[2 3 5]\n[5 1 4]\n[4 2 6]\n"}︡{"stdout":"[ -2 -14   6]\n[ -8  -8   8]\n[  7  17 -13]\n"}︡{"stdout":"[   1/8    7/8   -3/8]\n[   1/2    1/2   -1/2]\n[ -7/16 -17/16  13/16]\n"}︡{"done":true}︡
︠4c70388a-ce2e-43b9-b637-e8789123755es︠
A.adjoint()/A.det() == A.inverse()
︡f23cc59f-7bec-4d92-8579-608056ce79ed︡{"stdout":"True\n"}︡{"done":true}︡
︠87d11b47-d510-4fcd-9c0a-f7497ca81089s︠
A.norm(1)
A.norm()
A.norm('frob')
︡6d228509-07fe-477c-a3f2-a62fe8d2690b︡{"stdout":"12.0\n"}︡{"stdout":"11.346960138635389"}︡{"stdout":"\n"}︡{"stdout":"11.661903789690601\n"}︡{"done":true}︡
︠f63240fa-4141-4b0b-8162-75e3d0211e91s︠
A = matrix([[1,2],[3,4]]) #ako ne specificiramo polje, bit će odabrano najmanje koje sadrži sve elemente matrice
type(A)
︡3c0a5338-82fe-4100-9e58-c9633ab3cc4a︡{"stdout":"<type 'sage.matrix.matrix_integer_dense.Matrix_integer_dense'>\n"}︡{"done":true}︡
︠e0492e6a-d413-4997-b137-481d3b1a30bes︠
show(block_matrix([[A,-A],[2*A, A^2]]))
︡4a0e3c4a-149a-4e26-96e5-52b339a08eb0︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr|rr}\n1 &amp; 2 &amp; -1 &amp; -2 \\\\\n3 &amp; 4 &amp; -3 &amp; -4 \\\\\n\\hline\n 2 &amp; 4 &amp; 7 &amp; 10 \\\\\n6 &amp; 8 &amp; 15 &amp; 22\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠06e5780c-c969-45bc-ba6e-30d6ef2ebca9s︠
A = matrix([[1,2,3],[4,5,6]])
show(block_matrix([1,A,0,0,-A,2], ncols=3))
︡1c82122b-bfc6-44d4-a6be-37914ef83354︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr|rrr|rr}\n1 &amp; 0 &amp; 1 &amp; 2 &amp; 3 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 4 &amp; 5 &amp; 6 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; 0 &amp; -1 &amp; -2 &amp; -3 &amp; 2 &amp; 0 \\\\\n0 &amp; 0 &amp; -4 &amp; -5 &amp; -6 &amp; 0 &amp; 2\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠d1157127-a92e-4fe8-a849-3651eadf7f0as︠
A = matrix(3,3,range(9))
A
︡8cd6a1c1-5e6a-4746-b0c1-5a6985b4add3︡{"stdout":"[0 1 2]\n[3 4 5]\n[6 7 8]\n"}︡{"done":true}︡
︠9e8a9736-df58-443a-b3a5-0f42aeeab219s︠
R.<x> = PolynomialRing(GF(5),'x')
A = random_matrix(R,2,3)
A
︡b46b35a4-04c5-44f4-bf7b-9ccf79917788︡{"stdout":"[      2*x^2 + 4   4*x^2 + x + 4             2*x]\n[3*x^2 + 3*x + 1   x^2 + 2*x + 1         x^2 + 1]\n"}︡{"done":true}︡
︠2f3a31d6-a97d-4f82-a6e8-53a03392d255i︠
%md
#### Spektar matrica
︡8af3692b-18ac-4956-9462-97e60f7c7d45︡{"html":"<h4>Spektar matrica</h4>\n"}︡
︠22464251-0d1c-4cf0-977c-66a016af1fcbs︠
A = Matrix(QQ, [[2, -3, 1], [1, -2, 1], [1, -3, 2]])
ev = A.eigenvectors_right()
for v in ev:
    show(v[0]) # sv. vrijednosti
for v in ev:
    show(v[1]) # sv. vektori
for v in ev:
    show(v[2]) # kratnosti
︡a3ad3c45-e824-4ec7-a938-76a5fd29c511︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>[$\\displaystyle \\left(1,\\,1,\\,1\\right)$]</div>"}︡{"html":"<div align='center'>[$\\displaystyle \\left(1,\\,0,\\,-1\\right)$, $\\displaystyle \\left(0,\\,1,\\,3\\right)$]</div>"}︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>$\\displaystyle 2$</div>"}︡{"done":true}︡
︠e4887dad-b013-4e89-b1b8-c115c9ec6139s︠
A.eigenvalues()
︡c6abed3e-790a-45ec-9ff6-e0187add769f︡{"stdout":"[0, 1, 1]\n"}︡{"done":true}︡
︠b3005073-2dfc-49c5-9468-4886c0fdf4e8s︠
D, P = A.eigenmatrix_right()
show(D)
show(P)
A*P == P*D
︡15570448-0c37-4242-8e84-b30fa455ff53︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 \\\\\n1 &amp; -1 &amp; 3\n\\end{array}\\right)$</div>"}︡{"stdout":"True\n"}︡{"done":true}︡
︠fc1a9298-7def-404b-9790-13a6fa7f0b50s︠
A = Matrix(RDF, [[1, -1, 4], [1, 4, -2], [1, 4, 2], [1, -1, 0]])
type(A)
︡ebd1e780-baed-4681-b56d-bbc38f26a14c︡{"stdout":"<type 'sage.matrix.matrix_real_double_dense.Matrix_real_double_dense'>\n"}︡{"done":true}︡
︠aefedff5-01f2-4f46-ad95-eac4e4901ba7s︠
Q, R = A.QR()
show(Q)
show(R)
︡ef569ad6-44d3-4d87-b75f-6fd0a5b47afb︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n-0.5 &amp; 0.5 &amp; -0.5 &amp; -0.5 \\\\\n-0.5 &amp; -0.5 &amp; 0.5 &amp; -0.5 \\\\\n-0.5 &amp; -0.5 &amp; -0.5 &amp; 0.5 \\\\\n-0.5 &amp; 0.5 &amp; 0.5 &amp; 0.5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n-2.0 &amp; -3.0 &amp; -2.0 \\\\\n0.0 &amp; -5.0 &amp; 2.0 \\\\\n0.0 &amp; 0.0 &amp; -4.0 \\\\\n0.0 &amp; 0.0 &amp; 0.0\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠a3c3eef7-bdd9-4cb4-9287-0ceb52263f79s︠
U, Sigma, V = A.SVD()
show(U)
show(Sigma)
show(V)
︡9a2d1241-9291-4f15-bb32-c8f325d56054︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n-0.313279120424 &amp; 0.771564156303 &amp; -0.237791811076 &amp; -0.5 \\\\\n0.748087126775 &amp; -0.146888948344 &amp; -0.4108397347 &amp; -0.5 \\\\\n0.569322205509 &amp; 0.61893410742 &amp; 0.206864199386 &amp; 0.5 \\\\\n-0.134514199158 &amp; 0.00574110053924 &amp; -0.855495745162 &amp; 0.5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n6.00328466876 &amp; 0.0 &amp; 0.0 \\\\\n0.0 &amp; 4.9112061916 &amp; 0.0 \\\\\n0.0 &amp; 0.0 &amp; 1.35669706619 \\\\\n0.0 &amp; 0.0 &amp; 0.0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n0.14485670107 &amp; 0.254387693609 &amp; -0.956192155111 \\\\\n0.952383730605 &amp; 0.226191965094 &amp; 0.204456412486 \\\\\n-0.268294177787 &amp; 0.940278733285 &amp; 0.209509278787\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠963191eb-dc76-4bf1-8bb3-ebf8d25c534ds︠
A = matrix(QQ, [[2,4,3],[-4,-6,-3],[3,3,1]])
A.characteristic_polynomial()
A.minimal_polynomial().factor()
︡f061a0c2-fc70-498a-945f-f6019a9fa880︡{"stdout":"x^3 + 3*x^2 - 4\n"}︡{"stdout":"(x - 1) * (x + 2)^2\n"}︡{"done":true}︡
︠50cfaf7c-ddbe-45c1-873c-581c0f5b9cb6s︠
show(A.jordan_form())
︡5e52aa48-0ec6-4338-b1e5-c5f6b8c09962︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{r|rr}\n1 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; -2 &amp; 1 \\\\\n0 &amp; 0 &amp; -2\n\\end{array}\\right)$</div>"}︡{"done":true}︡
︠ddc2b286-5f0b-4ff0-b97d-861c770d577bs︠
show(A.jordan_form(transformation=True))
︡134c7cfc-f0c1-46ee-9e37-3b11873cb1e6︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{r|rr}\n1 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; -2 &amp; 1 \\\\\n0 &amp; 0 &amp; -2\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 1 &amp; 1 \\\\\n-1 &amp; -1 &amp; 0 \\\\\n1 &amp; 0 &amp; -1\n\\end{array}\\right)$)</div>"}︡{"done":true}︡
︠70491f3e-07d0-4536-8b27-28b55b60584ds︠
A = matrix(QQ, [[1,-1/2],[-1/2,-1]])
A.jordan_form()
︡2d82b066-e344-4768-9afc-d4da9f2c47fd︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/sage/sage-7.5/local/lib/python2.7/site-packages/smc_sagews/sage_server.py\", line 995, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/matrix/matrix2.pyx\", line 10153, in sage.matrix.matrix2.Matrix.jordan_form (/projects/sage/sage-7.5/src/build/cythonized/sage/matrix/matrix2.c:76646)\n    raise RuntimeError(\"Some eigenvalue does not exist in %s.\"  %(A.base_ring()))\nRuntimeError: Some eigenvalue does not exist in Rational Field.\n"}︡{"done":true}︡
︠ab2c5f0c-3389-4346-99b9-c1cee471f2b2s︠
A.minimal_polynomial()
︡199abc17-a656-4e6f-b393-0e8eded529f2︡{"stdout":"x^2 - 5/4\n"}︡{"done":true}︡
︠75ea76cb-ba1b-47e1-983a-87f37ddb8570s︠
R = QQ[sqrt(5)]
A = A.change_ring(R)
show(A.jordan_form(transformation=True, subdivide=False))
︡2028f9cc-4dca-4243-beb6-d06d07c77493︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{rr}\n\\frac{1}{2} \\mathit{sqrt}_{5} &amp; 0 \\\\\n0 &amp; -\\frac{1}{2} \\mathit{sqrt}_{5}\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rr}\n1 &amp; 1 \\\\\n-\\mathit{sqrt}_{5} + 2 &amp; \\mathit{sqrt}_{5} + 2\n\\end{array}\\right)$)</div>"}︡{"done":true}︡
︠4d24cf25-f138-40ed-9bb5-64d2e91a7cf5i︠
%md
# Algebarske strukture
︡5e97711d-7063-407e-aa12-abad35bbed7b︡{"html":"<h1>Algebarske strukture</h1>\n"}︡
︠d55f5c75-bea8-4444-ac08-2cd509951c08i︠
%md
### Permutacije, grupe

︡cb7ed4ae-1c43-49c2-9be1-ae68509bfd8c︡{"html":"<h3>Permutacije, grupe</h3>\n"}︡
︠677565b5-e21e-4cf3-a15a-6a0f764d82b9s︠
S5 = SymmetricGroup(5)
S5.cardinality()
S5.list() #ciklička notacija!
︡1b51700e-982b-4638-9b62-670edbb23f3f︡{"stdout":"120"}︡{"stdout":"\n"}︡{"stdout":"[(), (1,2), (1,2,3,4,5), (1,3,4,5), (2,3,4,5), (1,3,5,2,4), (1,2,4)(3,5), (1,3,4,5,2), (1,3,5)(2,4), (1,4,2,5,3), (1,4)(2,3,5), (1,3)(2,5,4), (2,4)(3,5), (1,4,3)(2,5), (1,5,4,3,2), (1,4)(2,5,3), (1,5,3)(2,4), (1,4)(3,5), (1,4,2,3,5), (1,5,3,2,4), (1,3,2,5,4), (1,5,4,2), (1,2,5,4,3), (1,4,3,2,5), (2,5,4,3), (1,5,4,2,3), (1,4,3,2), (1,4,2)(3,5), (1,5,4,3), (1,5,3,2), (1,5,2,4,3), (2,5,3), (4,5), (2,3), (1,5), (2,4,3), (1,3,2), (3,4), (2,5,4), (1,5,4)(2,3), (1,5,2), (1,5,3), (1,5)(2,4,3), (1,4,2), (1,4,3), (1,5,4), (1,2,4,3), (1,2)(4,5), (1,4), (1,2,3,5), (1,2,5,3), (1,2)(3,4), (1,5)(2,3), (3,4,5), (1,2,4,5), (1,3), (2,3)(4,5), (1,2,5), (1,5)(3,4), (2,4), (2,3,4), (1,2,3), (1,2,5,4), (2,5), (1,4,5), (1,2,3,4), (1,2,3)(4,5), (1,5)(2,3,4), (1,4,5)(2,3), (1,5,2,3,4), (1,2,3,5,4), (1,3,4), (1,4,5,2), (2,4,5), (1,2,5)(3,4), (1,2)(3,4,5), (1,3,2,4,5), (1,3,2,5), (1,5,2)(3,4), (1,2,4,3,5), (1,3,5), (1,3,4,2), (1,3,4)(2,5), (1,3)(2,4,5), (1,5,2,3), (1,2,4), (1,3,2)(4,5), (2,3,5), (1,3)(4,5), (1,4)(2,5), (1,3,5,2), (2,5)(3,4), (3,5), (2,4,5,3), (1,3)(2,5), (1,2,5,3,4), (1,5,3,4), (1,3,5,4), (2,3,5,4), (1,4,3,5), (1,3)(2,4), (1,2,4,5,3), (2,4,3,5), (1,4,5,2,3), (1,5,2,4), (1,3,4,2,5), (1,3,2,4), (1,2)(3,5), (1,4,5,3,2), (2,5,3,4), (1,4,2,5), (1,4,3,5,2), (1,4,5,3), (1,4)(2,3), (1,3,5,4,2), (1,5)(2,4), (1,5,3,4,2), (1,4,2,3), (3,5,4), (1,2)(3,5,4)]\n"}︡{"done":true}︡
︠e0c609f1-caa0-4005-9385-6047be1629ccs︠
S5.identity()
︡30f9b4a7-01ed-4bf8-ad3f-1fedf9d622c0︡{"stdout":"()\n"}︡{"done":true}︡
︠03e8fff7-0184-42c5-9e96-65c2a760d5e3s︠
S5.random_element()
︡df10a5af-3bc1-4656-8928-78ff32adcf3d︡{"stdout":"(1,3)(2,5)\n"}︡{"done":true}︡
︠6fb13027-70f7-4b92-a87c-22510cc80c61s︠
r = S5.random_element()
r
r.domain() # tablična notacija
︡8aab6368-5a6f-4a7f-b8e0-4c5f5e887316︡{"stdout":"(3,4)\n"}︡{"stdout":"[1, 2, 4, 3, 5]\n"}︡{"done":true}︡
︠ffb52584-a252-4c06-8203-071853ca371bs︠
s = S5('(1,3)(2,4)')
s.domain()
︡cc8c6a18-8703-401f-9b08-61c7c8de1b0a︡{"stdout":"[3, 4, 1, 2, 5]\n"}︡{"done":true}︡
︠8f5fea7b-25c1-4f23-8ee0-359446cd4cb9s︠
t = S5([1,5,4,3,2])
t.domain()
︡1eb2392e-8a14-4f8a-a746-1bfe986da1ee︡{"stdout":"[1, 5, 4, 3, 2]\n"}︡{"done":true}︡
︠f6123784-3a51-4d7e-9edb-15e8c89108das︠
t*s
︡b4e7a6ed-acba-4060-b34d-a33893252719︡{"stdout":"(1,3,2,5,4)\n"}︡{"done":true}︡
︠13cd2926-2d6c-4077-883b-fd5c779bb31es︠
t.order()
︡f593ba1f-5c58-49da-b866-0f1b631cd14b︡{"stdout":"2\n"}︡{"done":true}︡
︠485ea0a0-e912-473a-874f-bb53615cea5ds︠
t*t
︡7589867c-60af-4d05-8016-6e3431c78bbc︡{"stdout":"()\n"}︡{"done":true}︡
︠7605a5b4-1086-446e-9f05-1324f7023885s︠
t.sign()
︡776a28e5-dc54-41d4-983d-a671a42b71bd︡{"stdout":"1\n"}︡{"done":true}︡
︠93c41915-64d7-4405-a394-19fffd847167s︠
S4 = SymmetricGroup(4)
S4.is_subgroup(S5)
︡94803180-5e98-4e30-b362-5c247e79f689︡{"stdout":"True\n"}︡{"done":true}︡
︠ac083b09-04e9-4e3b-80d2-35e7ced38e53s︠
S4.normal_subgroups()
︡874483ae-4369-4c77-8745-6a62b9e479a6︡{"stdout":"[Subgroup of (Symmetric group of order 4! as a permutation group) generated by [()], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(1,3)(2,4), (1,4)(2,3)], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(2,4,3), (1,3)(2,4), (1,4)(2,3)], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(1,2), (1,2,3,4)]]\n"}︡{"done":true}︡
︠984062ef-da3c-48ed-8125-9f0a263168abs︠
H = S5.subgroup([t,s])
H
︡b4d1d09a-8974-475d-9751-2741a996db21︡{"stdout":"Subgroup of (Symmetric group of order 5! as a permutation group) generated by [(2,5)(3,4), (1,3)(2,4)]\n"}︡{"done":true}︡
︠d7b92284-19b4-4d33-ab14-05b9dcf3881cs︠
H.list()
︡2f5bfbf3-d91e-4b85-9c41-73d97f8f11ae︡{"stdout":"[(), (1,3)(2,4), (2,5)(3,4), (1,3,2,5,4), (1,4,5,2,3), (1,2)(4,5), (1,4)(3,5), (1,2,4,3,5), (1,5,3,4,2), (1,5)(2,3)]\n"}︡{"done":true}︡
︠545440c9-78ee-4d8a-9e8f-fa094d5aefe1s︠
H.is_abelian()
H.is_cyclic()
︡7eed698f-416d-4e7d-8c2c-01134e9f5270︡{"stdout":"False\n"}︡{"stdout":"False\n"}︡{"done":true}︡
︠22320cb8-bdae-454d-8938-017492ee5ffas︠
S3 = SymmetricGroup(3)
S3.cayley_table()
︡a56df5e2-c31d-4c43-a4ff-2608ff9c4afe︡{"stdout":"*  a b c d e f\n +------------\na| a b c d e f\nb| b a f e d c\nc| c e d a f b\nd| d f a c b e\ne| e c b f a d\nf| f d e b c a\n\n"}︡{"done":true}︡
︠8a4b7da8-1f69-49eb-8546-ac07a9e5cb05s︠
S3.cayley_table(names='elements')
︡3dfba0f0-ddc3-47d1-8244-2faa8cf0cfba︡{"stdout":"      *       ()   (1,2) (1,2,3) (1,3,2)   (2,3)   (1,3)\n       +------------------------------------------------\n     ()|      ()   (1,2) (1,2,3) (1,3,2)   (2,3)   (1,3)\n  (1,2)|   (1,2)      ()   (1,3)   (2,3) (1,3,2) (1,2,3)\n(1,2,3)| (1,2,3)   (2,3) (1,3,2)      ()   (1,3)   (1,2)\n(1,3,2)| (1,3,2)   (1,3)      () (1,2,3)   (1,2)   (2,3)\n  (2,3)|   (2,3) (1,2,3)   (1,2)   (1,3)      () (1,3,2)\n  (1,3)|   (1,3) (1,3,2)   (2,3)   (1,2) (1,2,3)      ()\n\n"}︡{"done":true}︡
︠91cde837-cacc-41e6-a928-b61369494fecs︠
S3.cayley_table(names=['id','u1','u3','r1','r2','u2'])
︡26a4561c-c491-440d-a838-0141207adacb︡{"stdout":" *  id u1 u3 r1 r2 u2\n  +------------------\nid| id u1 u3 r1 r2 u2\nu1| u1 id u2 r2 r1 u3\nu3| u3 r2 r1 id u2 u1\nr1| r1 u2 id u3 u1 r2\nr2| r2 u3 u1 u2 id r1\nu2| u2 r1 r2 u1 u3 id\n\n"}︡{"done":true}︡
︠49a6ad80-f39b-4f15-9017-6b100dc9364ds︠
r = '(1,3)(2,4)(5)'
s = '(1,3,2)'
K = PermutationGroup([r,s])
K
︡8260d11a-5a99-4ab3-b54e-1ad5e6c0ece2︡{"stdout":"Permutation Group with generators [(1,3,2), (1,3)(2,4)]\n"}︡{"done":true}︡
︠b956137d-1146-4868-9ccb-3196405df371s︠
K.order()
︡64323678-1a40-4aad-824e-4c4066f75174︡{"stdout":"12\n"}︡{"done":true}︡
︠47b6ee87-5f98-4060-894d-9d0e7b317e3fs︠
D = DihedralGroup(4)
D.list() #prikazana kao podgrupa permutacija
︡87473611-9402-4a8a-9c59-ae8bc42f8ddd︡{"stdout":"[(), (1,4)(2,3), (1,2,3,4), (1,3)(2,4), (1,3), (2,4), (1,4,3,2), (1,2)(3,4)]\n"}︡{"done":true}︡
︠51180d6a-ab76-4e05-abc0-08beb25a891es︠
D.subgroups()
︡c80dfcdc-ad09-4b0c-899e-e22f7905823e︡{"stdout":"[Subgroup of (Dihedral group of order 8 as a permutation group) generated by [()], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2)(3,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,4)(2,3)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2,3,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2)(3,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4), (1,2,3,4), (1,3)(2,4)]]"}︡{"stdout":"\n"}︡{"done":true}︡
︠0c54ce51-1ff9-471a-93d3-e4334ce0c053s︠
D.center()
︡a11c55d4-8aa1-4f80-93a5-a6f749724593︡{"stdout":"Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)(2,4)]\n"}︡{"done":true}︡
︠fa1d0145-dffe-450a-834e-c2bcd863d8f4s︠
D.center().list()
︡3453f428-4921-4e14-a44e-dce4ffc893e0︡{"stdout":"[(), (1,3)(2,4)]\n"}︡{"done":true}︡
︠e611404b-a4b5-48e8-bef7-c9e1b2b1a2cbs︠
D.centralizer(D('(1,3)(2,4)'))
︡396da499-e30c-49fc-9ad0-26a88d63865e︡{"stdout":"Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2,3,4), (1,4)(2,3)]\n"}︡{"done":true}︡
︠5c304d04-3ab9-4dc0-869a-3aab6bd4ce32s︠
A4 = AlternatingGroup(4)
A4.cardinality()
︡e09e7fca-b0ba-41b2-9fe6-dba71fb32daa︡{"stdout":"12\n"}︡{"done":true}︡
︠58f9938c-7fbe-435c-8404-36cc43f8c156s︠
g1 = A4('(1,4)(3,2)') ; g2 = A4('(2,4)(1,3)')
H = A4.subgroup([g1,g2]);
H.is_normal(A4);
︡102cdc70-8f49-4116-a3c4-7f8614ba8cfa︡{"stdout":"True\n"}︡{"done":true}︡
︠06e92b15-26e8-45f3-a049-3438516abda9s︠
Hd = A4.cosets(H, side = 'right')
Hl = A4.cosets(H, side = 'left')
print "Hd = ", Hd
print "Hl = ", Hl
︡9503a21c-754e-4058-ba8d-77462d1709a9︡{"stdout":"Hd =  [[(), (1,2)(3,4), (1,3)(2,4), (1,4)(2,3)], [(2,3,4), (1,3,2), (1,4,3), (1,2,4)], [(2,4,3), (1,4,2), (1,2,3), (1,3,4)]]\n"}︡{"stdout":"Hl =  [[(), (1,2)(3,4), (1,3)(2,4), (1,4)(2,3)], [(2,3,4), (1,2,4), (1,3,2), (1,4,3)], [(2,4,3), (1,2,3), (1,3,4), (1,4,2)]]\n"}︡{"done":true}︡
︠7fee14dc-1942-4597-b82b-13f5edfdd384s︠
A4.conjugacy_classes_representatives()
︡ea31a60a-ed32-4456-9e6d-a84d00823ce8︡{"stdout":"[(), (1,2)(3,4), (1,2,3), (1,2,4)]\n"}︡{"done":true}︡
︠652bb9e5-3e6a-47c6-90e9-fca4f4d93f70s︠
B = DiCyclicGroup(3)
A4.is_isomorphic(B)
︡cf443418-a261-4981-82b3-9044a1afc783︡{"stdout":"False\n"}︡{"done":true}︡
︠8fb68d31-e5ea-4539-a79e-34e689e4d283s︠
T = [s for s in S5  if s.order() == 2]
T
︡0a3ef7e7-c130-480f-8fe1-ea413cefda9d︡{"stdout":"[(1,2), (2,4)(3,5), (1,4)(3,5), (4,5), (2,3), (1,5), (3,4), (1,2)(4,5), (1,4), (1,2)(3,4), (1,5)(2,3), (1,3), (2,3)(4,5), (1,5)(3,4), (2,4), (2,5), (1,3)(4,5), (1,4)(2,5), (2,5)(3,4), (3,5), (1,3)(2,5), (1,3)(2,4), (1,2)(3,5), (1,4)(2,3), (1,5)(2,4)]\n"}︡{"done":true}︡
︠a9ae875c-f2fc-4daf-baed-0c6ce7a247b7i︠
%md
### Prsteni polinoma
︡a56229d9-07bb-4c70-818e-30294c0a4609︡{"html":"<h3>Prsteni polinoma</h3>\n"}︡
︠8bdff69f-1a44-4d77-b649-60e18de5dc3bs︠
R.<x>=PolynomialRing(ZZ) #x je varijabla polinoma iz polja Z
R
︡1794e2bb-a7e4-4f34-adf9-ccfea1b96fdc︡{"stdout":"Univariate Polynomial Ring in x over Integer Ring\n"}︡{"done":true}︡
︠af1af755-1a86-436f-9be8-a20bd7e9a1ebs︠
p = 2*x^2 + (1/2)*x + (3/5)
parent(p)
︡9cc86d5d-0a87-4e98-8ba5-b7377e25268a︡{"stdout":"Univariate Polynomial Ring in x over Rational Field\n"}︡{"done":true}︡
︠08497980-7d12-4c7f-a5a7-d6516e28ad52s︠
S.<y>=PolynomialRing(ZZ)
(1/2)*y in S
︡68118f3e-2b4a-4b61-83ec-ce3e96d45cfb︡{"stdout":"False\n"}︡{"done":true}︡
︠5566d171-d0e7-474b-b92f-26e3c1a5725fs︠
f=x+1
g=x^2+x-1
h=1/2*x+3/4
parent(f), parent(g), parent(h)
f+g
g-h
f*g
h^3
︡b7316b2f-9975-42a6-b791-44e519c25d97︡{"stdout":"(Univariate Polynomial Ring in x over Integer Ring, Univariate Polynomial Ring in x over Integer Ring, Univariate Polynomial Ring in x over Rational Field)\n"}︡{"stdout":"x^2 + 2*x\n"}︡{"stdout":"x^2 + 1/2*x - 7/4\n"}︡{"stdout":"x^3 + 2*x^2 - 1\n"}︡{"stdout":"1/8*x^3 + 9/16*x^2 + 27/32*x + 27/64\n"}︡{"done":true}︡
︠c65df025-e052-40c6-a0fb-bf6deb19480ds︠
f/g
parent(f/g)
︡9d3a3cfe-1a2b-407a-8083-777c1336467d︡{"stdout":"(x + 1)/(x^2 + x - 1)\n"}︡{"stdout":"Fraction Field of Univariate Polynomial Ring in x over Integer Ring\n"}︡{"done":true}︡
︠ab09d9b4-afbf-4994-a75b-9f4eff9e2f8bs︠
f=x^6+x^2+1
g=x^3+x+1
f // g
f % g
︡66c8a562-31ad-4404-9f12-ee0facab4198︡{"stdout":"x^3 - x - 1\n"}︡{"stdout":"2*x^2 + 2*x + 2\n"}︡{"done":true}︡
︠14f77ac1-7a28-469d-93eb-e9dd92839cc2s︠
p = x^4 + 2*x^3 + 2*x^2 + 2*x + 1
q = x^4 - 1
gcd(p,q)
︡56a5b4f0-a40f-4574-93f2-32aff253aca5︡{"stdout":"x^3 + x^2 + x + 1\n"}︡{"done":true}︡
︠31d8fae0-2304-4e63-9cd7-6faa4fb28756s︠
(x^3+x+1).is_irreducible()
︡7048de62-9f4d-4b2a-8ba7-5ff1c5345011︡{"stdout":"True\n"}︡{"done":true}︡
︠b3221bb4-8c46-4ac2-9753-e249ee9dbc9cs︠
(x^3+1).is_irreducible()
︡7e538fea-53f2-4986-9622-5b5ed0ebfe3b︡{"stdout":"False\n"}︡{"done":true}︡
︠5f7a3006-f4b0-48d3-a41b-5ce8df674644s︠
R.<x,y,z> = PolynomialRing(QQ, 3)
p = -1/2*x - y*z - y + 8*z^2
p.monomials()
p.coefficients()
[ a*b for a,b in zip(p.coefficients(),p.monomials())]
︡f0975740-09a4-4fc2-a467-677a00d66d44︡{"stdout":"[y*z, z^2, x, y]\n"}︡{"stdout":"[-1, 8, -1/2, -1]\n"}︡{"stdout":"[-y*z, 8*z^2, -1/2*x, -y]\n"}︡{"done":true}︡
︠b604521b-cce7-4a21-ae6f-e9e7abe4b47bs︠
p.lc() #vodeći koeficijent
p.lt() #vodeći član
︡254ed5ac-eeda-45c7-8091-45e8c21ea6d6︡{"stdout":"-1\n"}︡{"stdout":"-y*z\n"}︡{"done":true}︡
︠238055f2-1c2a-479b-af53-2db4273417bfs︠
p.total_degree()
p.exponents()
︡dfeca2b9-2a3f-4665-9ef0-cfcdd7ee74dd︡{"stdout":"2\n"}︡{"stdout":"[(0, 1, 1), (0, 0, 2), (1, 0, 0), (0, 1, 0)]\n"}︡{"done":true}︡
︠0bd4b4b8-c6b6-438b-9e1d-6b3932d2fb20i︠
%md
### Elementarna teorija brojeva
︡999126ec-757f-4108-8935-7521ec70595e︡{"html":"<h3>Elementarna teorija brojeva</h3>\n"}︡
︠4338684f-ea53-4252-894d-f9325dc1a7aes︠
gcd(2776, 2452)
︡91e1811e-6f34-4148-955d-2fee23ca3fed︡{"stdout":"4\n"}︡{"done":true}︡
︠e1ad7cf9-aec6-44d0-9f8d-871a304a762es︠
a = 633
b = 331
ext = xgcd(a, b)
ext[0] == ext[1]*a + ext[2]*b
︡f3cbf6f7-67bc-438e-804c-c4b1fee61fd7︡{"stdout":"True\n"}︡{"done":true}︡
︠1587a09f-19aa-4179-9fd5-c094a105df0es︠
factor(2600)
prime_divisors(2600)
︡a393dad7-4bc0-4994-b31a-7e86c743b5b4︡{"stdout":"2^3 * 5^2 * 13\n"}︡{"stdout":"[2, 5, 13]\n"}︡{"done":true}︡
︠b726d5c1-0fb0-4b6e-8a46-781d8ad499f0s︠
inverse_mod(352, 917)
︡3805c969-3beb-4452-ae77-dd88948684fc︡{"stdout":"508\n"}︡{"done":true}︡
︠816a2b89-6447-4b38-8e9e-0a43c8465516i︠
%md
multiplikativni inverz od 352 mod 917; znači postoji `m` takav da vrijedi `352*508 == m*917+1`
︡6153a0e0-b69f-4e04-a6c4-5900d1db9112︡{"html":"<p>multiplikativni inverz od 352 mod 917; znači postoji <code>m</code> takav da vrijedi <code>352*508 == m*917+1</code></p>\n"}︡
︠fe75e2a3-6745-4bb6-96dd-84fa549846a4s︠
euler_phi(345)
︡669ed941-4921-470a-b9b2-522606c13cc4︡{"stdout":"176\n"}︡{"done":true}︡
︠96aa5a2e-34c4-4294-bc71-531467e27d1cs︠
m = random_prime(10000)
n = random_prime(10000)
euler_phi(m*n) == euler_phi(m) * euler_phi(n)
︡703b5563-62f1-4001-9a82-bf8f19da4b13︡{"stdout":"True\n"}︡{"done":true}︡
︠173af210-9cdc-4e3d-94a9-81f870b2b666s︠
is_prime(14547073)
︡11b48f66-135a-48d9-b5c5-c02677734cc9︡{"stdout":"False\n"}︡{"done":true}︡
︠4ecebba5-574b-4cf7-8828-8648851fd33fs︠
p = random_prime(10^21, True) #bez `True` računanje će biti puno brže, uz malu šansu da broj nije prost
is_prime(p)
︡1d2c5f43-48ac-4d99-823c-3007ee2e51ca︡{"stdout":"True\n"}︡{"done":true}︡
︠a8e9d0fc-558b-4713-b809-742d9221adc0s︠
prime_range(500, 550)
primes_first_n(20)
︡68c1211f-fc58-4054-b051-cd19c3cf9886︡{"stdout":"[503, 509, 521, 523, 541, 547]\n"}︡{"stdout":"[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]\n"}︡{"done":true}︡
︠c0255080-8040-4921-8896-949733ca2332i︠
%html
Kongruencije: $a\equiv b \pmod{n}$.
Broj $b$ možemo izračunati pomoću sljedećeg koda: <code>mod(a,n)</code>
︡dc72d98d-b891-45cc-a4cd-90609a25f442︡{"html":"Kongruencije: $a\\equiv b \\pmod{n}$.\nBroj $b$ možemo izračunati pomoću sljedećeg koda: <code>mod(a,n)</code>"}︡
︠7ce147e4-ba8a-4023-be59-03072772b9afs︠
mod(23, 5)
︡ac84c5ac-4b1a-4fca-ac7a-07981121d530︡{"stdout":"3\n"}︡{"done":true}︡
︠ee13cf93-cef0-41dd-abb5-4a5280185f51i︠
%html
$a^m \mod n$
︡bd9cbbe9-3886-4620-907a-8c5b9f7f58ed︡{"html":"$a^m \\mod n$"}︡
︠f3e7f819-3343-4517-bc73-35c28c71e929s︠
power_mod(15, 831, 23)
︡9b8fe5d2-cbad-4a6d-b74d-2395cdcb0a61︡{"stdout":"10\n"}︡{"done":true}︡
︠6576ac93-0c16-47ac-a41a-84af24ffc092i︠
%md
# Kombinatorika
︡608c3b0e-6c69-47cb-9976-c5c8595d9c23︡{"html":"<h1>Kombinatorika</h1>\n"}︡
︠f0fd878d-04fe-4ff7-8d08-f7a61a39a371s︠
boje = Set(["pik", "herc", "karo", "tref"])
vrijednosti = Set([2, 3, 4, 5, 6, 7, 8, 9, 10,"luda", "kraljica", "kralj", "as"])
karte = cartesian_product([vrijednosti, boje])
karte.random_element()
︡fc3c3dbb-2c89-4af1-9e30-bdbfdc9218a3︡{"stdout":"(3, 'pik')\n"}︡{"done":true}︡
︠35f5d89b-8abf-41eb-84dd-c9b137d1a095s︠
ruke = Subsets(karte, 5)
ruke.random_element()
︡fdb01eba-3659-4c83-8563-4a727c2b175f︡{"stdout":"{('as', 'karo'), (9, 'herc'), (9, 'pik'), ('kralj', 'pik'), (3, 'pik')}\n"}︡{"done":true}︡
︠8ad1e218-8ae3-45e5-b78b-64d0b23c8b03s︠
ruke.cardinality()
︡69aa9584-4fec-42aa-8c28-63240ac95126︡{"stdout":"2598960\n"}︡{"done":true}︡
︠1ac1c505-94ab-48a2-8342-d8abe311888as︠
S = Subsets([1,2,3,4], 2)
S.random_element()
S.cardinality()
︡19388c8f-499d-4ac7-91eb-17e7122e8aba︡{"stdout":"{1, 4}\n"}︡{"stdout":"6\n"}︡{"done":true}︡
︠666bb64f-0b66-43b5-a1a4-b6b70e75866es︠
E = Set([1,2,3,4])
S = Subsets(Subsets(Subsets(E)))
S.cardinality()
︡691d6158-e248-4048-878d-d54fe51a3337︡{"stdout":"2003529930406846464979072351560255750447825475569751419265016973710894059556311453089506130880933348101038234342907263181822949382118812668869506364761547029165041871916351587966347219442930927982084309104855990570159318959639524863372367203002916969592156108764948889254090805911457037675208500206671563702366126359747144807111774815880914135742720967190151836282560618091458852699826141425030123391108273603843767876449043205960379124490905707560314035076162562476031863793126484703743782954975613770981604614413308692118102485959152380195331030292162800160568670105651646750568038741529463842244845292537361442533614373729088303794601274724958414864915930647252015155693922628180691650796381064132275307267143998158508811292628901134237782705567421080070065283963322155077831214288551675554073345107213112427399562982719769150054883905223804357045848197956393157853510018992000024141963706813559840464039472194016069517690156119726982337890017641517190051133466306898140219383481435426387306539552969691388024158161859561100640362119796101859534802787167200122604642492385111393400464351623867567078745259464670903886547743483217897012764455529409092021959585751622973333576159552394885297579954028471943529913543763705986928913757153740001986394332464890052543106629669165243419174691389632476560289415199775477703138064781342309596190960654591300890188887588084733625956065444888501447335706058817090162108499714529568344061979690565469813631162053579369791403236328496233046421066136200220175787851857409162050489711781820400187282939943446186224328009837323764931814789848119452713007440220765680910376203999203492023906626264491909167985461515778839060397720759279378852241294301017458086862263369284725851403039615558564330385450688652213114813638408384778263790459607186876728509763471271988890680478243230394718650525660978150729861141430305816927924971409161059417185352275887504477592218301158780701975535722241400019548102005661773589781499532325208589753463547007786690406429016763808161740550405117670093673202804549339027992491867306539931640720492238474815280619166900933805732120816350707634351669869625020969023162859350071874190579161241536897514808261904847946571736601005892476655445840838334790544144817684255327207315586349347605137419779525190365032198020108764738368682531025183377533908861426184800374008082238104076468878471647552945326947661700424461063311238021134588694532200116564076327023074292426051582811070387018345324567635625951430032037432740780879056283663406965030844225855967039271869461158513793386475699748568670079823960604393478850861649260304945061743412365828352144806726676841807083754862211408236579802961200027441324438432402331257403545019352428776430880232850855886089962774458164680857875115807014743763867976955049991643998284357290415378143438847303484261903388841494031366139854257635577105335580206622185577060082551288893332226436281984838613239570676191409638533832374343758830859233722284644287996245605476932428998432652677378373173288063210753211238680604674708428051166488709084770291208161104912555598322366244868556651402684641209694982590565519216188104341226838996283071654868525536914850299539675503954938371853405900096187489473992880432496373165753803673586710175783994818471798498246948060532081996066183434012476096639519778021441199752546704080608499344178256285092726523709898651539462193004607364507926212975917698293892367015170992091531567814439791248475706237804600009918293321306880570046591458387208088016887445835557926258465124763087148566313528934166117490617526671492672176128330845273936469244582892571388877839056300482483799839692029222215486145902373478222682521639957440801727144146179559226175083889020074169926238300282286249284182671243405751424188569994272331606998712986882771820617214453142574944015066139463169197629181506579745526236191224848063890033669074365989226349564114665503062965960199720636202603521917776740668777463549375318899587866282125469797102065747232721372918144666659421872003474508942830911535189271114287108376159222380276605327823351661555149369375778466670145717971901227117812780450240026384758788339396817962950690798817121690686929538248529830023476068454114178139110648560236549754227497231007615131870024053910510913817843721791422528587432098524957878034683703337818421444017138688124249984418618129271198533315382567321870421530631197748535214670955334626336610864667332292409879849256691109516143618601548909740241913509623043612196128165950518666022030715613684732364660868905014263913906515063908199378852318365059897299125404479443425166774299659811849233151555272883274028352688442408752811283289980625912673699546247341543333500147231430612750390307397135252069338173843322950701049061867539433130784798015655130384758155685236218010419650255596181934986315913233036096461905990236112681196023441843363334594927631946101716652913823717182394299216272538461776065694542297877071383198817036964588689811863210976900355735884624464835706291453052757101278872027965364479724025405448132748391794128826423835171949197209797145936887537198729130831738033911016128547415377377715951728084111627597186384924222802373441925469991983672192131287035585307966942713416391033882754318613643490100943197409047331014476299861725424423355612237435715825933382804986243892498222780715951762757847109475119033482241412025182688713728193104253478196128440176479531505057110722974314569915223451643121848657575786528197564843508958384722923534559464521215831657751471298708225909292655638836651120681943836904116252668710044560243704200663709001941185557160472044643696932850060046928140507119069261393993902735534545567470314903886022024639948260501762431969305640666366626090207048887438898907498152865444381862917382901051820869936382661868303915273264581286782806601337500096593364625146091723180312930347877421234679118454791311109897794648216922505629399956793483801699157439700537542134485874586856047286751065423341893839099110586465595113646061055156838541217459801807133163612573079611168343863767667307354583494789788316330129240800836356825939157113130978030516441716682518346573675934198084958947940983292500086389778563494693212473426103062713745077286156922596628573857905533240641849018451328284632709269753830867308409142247659474439973348130810986399417379789657010687026734161967196591599588537834822988270125605842365589539690306474965584147981310997157542043256395776070485100881578291408250777738559790129129407309462785944505859412273194812753225152324801503466519048228961406646890305102510916237770448486230229488966711380555607956620732449373374027836767300203011615227008921843515652121379215748206859356920790214502277133099987729459596952817044582181956080965811702798062669891205061560742325686842271306295009864421853470810407128917646906550836129916694778023822502789667843489199409657361704586786242554006942516693979292624714524945408858422726153755260071904336329196375777502176005195800693847635789586878489536872122898557806826518192703632099480155874455575175312736471421295536494084385586615208012115079075068553344489258693283859653013272046970694571546959353658571788894862333292465202735853188533370948455403336565356988172582528918056635488363743793348411845580168331827676834646291995605513470039147876808640322629616641560667508153710646723108461964247537490553744805318226002710216400980584497526023035640038083472053149941172965736785066421400842696497103241919182121213206939769143923368374709228267738708132236680086924703491586840991153098315412063566123187504305467536983230827966457417620806593177265685841681837966106144963432544111706941700222657817358351259821080769101961052229263879745049019254311900620561906577452416191913187533984049343976823310298465893318373015809592522829206820862230332585280119266496314441316442773003237792274712330696417149945532261035475145631290668854345426869788447742981777493710117614651624183616680254815296335308490849943006763654806102940094693750609845588558043970485914449584445079978497045583550685408745163316464118083123079704389849190506587586425810738422420591191941674182490452700288263983057950057341711487031187142834184499153456702915280104485145176055306971441761368582384102787659324662689978418319620312262421177391477208004883578333569204533935953254564897028558589735505751235129536540502842081022785248776603574246366673148680279486052445782673626230852978265057114624846595914210278122788941448163994973881884622768244851622051817076722169863265701654316919742651230041757329904473537672536845792754365412826553581858046840069367718605020070547247548400805530424951854495267247261347318174742180078574693465447136036975884118029408039616746946288540679172138601225419503819704538417268006398820656328792839582708510919958839448297775647152026132871089526163417707151642899487953564854553553148754978134009964854498635824847690590033116961303766127923464323129706628411307427046202032013368350385425360313636763575212604707425311209233402837482949453104727418969287275572027615272268283376741393425652653283068469997597097750005560889932685025049212884068274139881631540456490350775871680074055685724021758685439053228133770707415830756269628316955687424060527726485853050611356384851965918968649596335568216975437621430778665934730450164822432964891270709898076676625671517269062058815549666382573829274182082278960684488222983394816670984039024283514306813767253460126007269262969468672750794346190439996618979611928750519442356402644303271737341591281496056168353988188569484045342311424613559925272330064881627466723523751234311893442118885085079358163848994487544756331689213869675574302737953785262542329024881047181939037220666894702204258836895840939998453560948869946833852579675161882159410981624918741813364726965123980677561947912557957446471427868624053750576104204267149366084980238274680575982591331006919941904651906531171908926077949119217946407355129633864523035673345588033313197080365457184791550432654899559705862888286866606618021882248602144999973122164138170653480175510438406624412822803616648904257377640956326482825258407669045608439490325290526337532316509087681336614242398309530806549661879381949120033919489494065132398816642080088395554942237096734840072642705701165089075196155370186264797456381187856175457113400473810762763014953309735174180655479112660938034311378532532883533352024934365979129341284854970946826329075830193072665337782559314331110963848053940859283988907796210479847919686876539987477095912788727475874439806779824968278272200926449944559380414608770641941810440758269805688038949654616587983904660587645341810289907194293021774519976104495043196841503455514044820928933378657363052830619990077748726922998608279053171691876578860908941817057993404890218441559791092676862796597583952483926734883634745651687016166240642424241228961118010615682342539392180052483454723779219911228595914191877491793823340010078128326506710281781396029120914720100947878752551263372884222353869490067927664511634758101193875319657242121476038284774774571704578610417385747911301908583877890152334343013005282797038580359815182929600305682612091950943737325454171056383887047528950563961029843641360935641632589408137981511693338619797339821670761004607980096016024823096943043806956620123213650140549586250615282588033022908385812478469315720323233601899469437647726721879376826431828382603564520699468630216048874528424363593558622333506235945002890558581611275341783750455936126130852640828051213873177490200249552738734585956405160830583053770732533971552620444705429573538361113677523169972740292941674204423248113875075631319078272188864053374694213842169928862940479635305150560788126366206497231257579019598873041195626227343728900516561111094111745277965482790471250581999077498063821559376885546498822938985408291325129076478386322494781016753491693489288104203015610283386143827378160946341335383578340765314321417150655877547820252454780657301342277470616744241968952613164274104695474621483756288299771804186785084546965619150908695874251184435837306590951460980451247409411373899927822492983367796011015387096129749705566301637307202750734759922943792393824427421186158236161317886392553095117188421298508307238259729144142251579403883011359083331651858234967221259621812507058113759495525022747274674369887131926670769299199084467161228738858457584622726573330753735572823951616964175198675012681745429323738294143824814377139861906716657572945807804820559511881687188075212971832636442155336787751274766940790117057509819575084563565217389544179875074523854455200133572033332379895074393905312918212255259833790909463630202185353848854825062897715616963860712382771725621313460549401770413581731931763370136332252819127547191443450920711848838366818174263342949611870091503049165339464763717766439120798347494627397822171502090670190302469762151278521956142070806461631373236517853976292092025500288962012970141379640038055734949269073535145961208674796547733692958773628635660143767964038430796864138563447801328261284589184898528048048844180821639423974014362903481665458114454366460032490618763039502356402044530748210241366895196644221339200757479128683805175150634662569391937740283512075666260829890491877287833852178522792045771846965855278790447562192663992008409302075673925363735628390829817577902153202106409617373283598494066652141198183810884515459772895164572131897797907491941013148368544639616904607030107596818933741217575988165127000761262789169510406315857637534787420070222051070891257612361658026806815858499852631465878086616800733264676830206391697203064894405628195406190685242003053463156621891327309069687353181641094514288036605995220248248886711554429104721929134248346438705368508648749099178812670565665387191049721820042371492740164460943459845392536706132210616533085662021188968234005752675486101476993688738209584552211571923479686888160853631615862880150395949418529489227074410828207169303387818084936204018255222271010985653444817207470756019245915599431072949578197878590578940052540122867517142511184356437184053563024181225473266093302710397968091064939272722683035410467632591355279683837705019855234621222858410557119921731717969804339317707750755627056047831779844447637560254637033369247114220815519973691371975163241302748712199863404548248524570118553342675264715978310731245663429805221455494156252724028915333354349341217862037007260315279870771872491234494477147909520734761385425485311552773301030342476835865496093722324007154518129732692081058424090557725645803681462234493189708138897143299831347617799679712453782310703739151473878692119187566700319321281896803322696594459286210607438827416919465162267632540665070881071030394178860564893769816734159025925194611823642945652669372203155504700213598846292758012527715422016629954863130324912311029627923723899766416803497141226527931907636326136814145516376656559839788489381733082668779901962886932296597379951931621187215455287394170243669885593888793316744533363119541518404088283815193421234122820030950313341050704760159987985472529190665222479319715440331794836837373220821885773341623856441380700541913530245943913502554531886454796252260251762928374330465102361057583514550739443339610216229675461415781127197001738611494279501411253280621254775810512972088465263158094806633687670147310733540717710876615935856814098212967730759197382973441445256688770855324570888958320993823432102718224114763732791357568615421252849657903335093152776925505845644010552192644505312073756287744998163646332835816140330175813967359427327690448920361880386754955751806890058532927201493923500525845146706982628548257883267398735220457228239290207144822219885587102896991935873074277815159757620764023951243860202032596596250212578349957710085626386118233813318509014686577064010676278617583772772895892746039403930337271873850536912957126715066896688493880885142943609962012966759079225082275313812849851526902931700263136328942095797577959327635531162066753488651317323872438748063513314512644889967589828812925480076425186586490241111127301357197181381602583178506932244007998656635371544088454866393181708395735780799059730839094881804060935959190907473960904410150516321749681412100765719177483767355751000733616922386537429079457803200042337452807566153042929014495780629634138383551783599764708851349004856973697965238695845994595592090709058956891451141412684505462117945026611750166928260250950770778211950432617383223562437601776799362796099368975191394965033358507155418436456852616674243688920371037495328425927131610537834980740739158633817967658425258036737206469351248652238481341663808061505704829059890696451936440018597120425723007316410009916987524260377362177763430621616744884930810929901009517974541564251204822086714586849255132444266777127863728211331536224301091824391243380214046242223349153559516890816288487989988273630445372432174280215755777967021666317047969728172483392841015642274507271779269399929740308072770395013581545142494049026536105825409373114653104943382484379718606937214444600826798002471229489405761853892203425608302697052876621377373594394224114707074072902725461307358541745691419446487624357682397065703184168467540733466346293673983620004041400714054277632480132742202685393698869787607009590048684650626771363070979821006557285101306601010780633743344773073478653881742681230743766066643312775356466578603715192922768440458273283243808212841218776132042460464900801054731426749260826922155637405486241717031027919996942645620955619816454547662045022411449404749349832206807191352767986747813458203859570413466177937228534940031631599544093684089572533438702986717829770373332806801764639502090023941931499115009105276821119510999063166150311585582835582607179410052528583611369961303442790173811787412061288182062023263849861515656451230047792967563618345768105043341769543067538041113928553792529241347339481050532025708728186307291158911335942014761872664291564036371927602306283840650425441742335464549987055318726887926424102147363698625463747159744354943443899730051742525110877357886390946812096673428152585919924857640488055071329814299359911463239919113959926752576359007446572810191805841807342227734721397723218231771716916400108826112549093361186780575722391018186168549108500885272274374212086524852372456248697662245384819298671129452945515497030585919307198497105414181636968976131126744027009648667545934567059936995464500558921628047976365686133316563907395703272034389175415267500915011198856872708848195531676931681272892143031376818016445477367518353497857924276463354162433601125960252109501612264110346083465648235597934274056868849224458745493776752120324703803035491157544831295275891939893680876327685438769557694881422844311998595700727521393176837831770339130423060958999137314684569010422095161967070506420256733873446115655276175992727151877660010238944760539789516945708802728736225121076224091810066700883474737605156285533943565843756271241244457651663064085939507947550920463932245202535463634444791755661725962187199279186575490857852950012840229035061514937310107009446151011613712423761426722541732055959202782129325725947146417224977321316381845326555279604270541871496236585252458648933254145062642337885651464670604298564781968461593663288954299780722542264790400616019751975007460545150060291806638271497016110987951336633771378434416194053121445291855180136575558667615019373029691932076120009255065081583275508499340768797252369987023567931026804136745718956641431852679054717169962990363015545645090044802789055701968328313630718997699153166679208958768572290600915472919636381673596673959975710326015571920237348580521128117458610065152598883843114511894880552129145775699146577530041384717124577965048175856395072895337539755822087777506072339445587895905719156736"}︡{"stdout":"\n"}︡{"done":true}︡
︠feb1dd18-07bc-4589-b853-0c0d33e45f4cs︠
C = SetPartitions([1,2,3])
C.list()
︡0729331f-5f17-4d16-974a-0296de1908c0︡{"stdout":"[{{1, 2, 3}}, {{1}, {2, 3}}, {{1, 3}, {2}}, {{1, 2}, {3}}, {{1}, {2}, {3}}]\n"}︡{"done":true}︡
︠111b00c1-9346-42fe-91c0-921fa9d332a2s︠
[[binomial(n,i) for i in range(n+1)] for n in range(10)]
︡122d9500-a4de-4382-8333-a365bc953545︡{"stdout":"[[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1], [1, 8, 28, 56, 70, 56, 28, 8, 1], [1, 9, 36, 84, 126, 126, 84, 36, 9, 1]]\n"}︡{"done":true}︡
︠4d1a5548-0779-4214-8f30-6ee2cd7db789s︠
C = Permutations(4)
C
︡d2439037-b0fa-4820-9250-6f8e9348136a︡{"stdout":"Standard permutations of 4\n"}︡{"done":true}︡
︠f61962fe-8b79-4070-9e0b-a2e5f5404910s︠
C.list()
︡ceb7cf96-b094-4612-b4c1-8d296aa7cf73︡{"stdout":"[[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4], [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1], [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4], [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]\n"}︡{"done":true}︡
︠4b08901f-4fef-44bd-8855-7006367ea123s︠
C = Compositions(5)
C.list()
list(Compositions(5, max_length=2))
︡28d30e98-c0e8-4f6e-9037-372aa7a9e0b9︡{"stdout":"[[1, 1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 2, 1], [1, 1, 3], [1, 2, 1, 1], [1, 2, 2], [1, 3, 1], [1, 4], [2, 1, 1, 1], [2, 1, 2], [2, 2, 1], [2, 3], [3, 1, 1], [3, 2], [4, 1], [5]]\n"}︡{"stdout":"[[5], [4, 1], [3, 2], [2, 3], [1, 4]]\n"}︡{"done":true}︡
︠ac7124f2-7720-4d7d-a09c-e384210dd088s︠
C = Combinations(range(4))
C.list()
︡9ecde1ec-ca72-47f1-8266-302d927978b6︡{"stdout":"[[], [0], [1], [2], [3], [0, 1], [0, 2], [0, 3], [1, 2], [1, 3], [2, 3], [0, 1, 2], [0, 1, 3], [0, 2, 3], [1, 2, 3], [0, 1, 2, 3]]\n"}︡{"done":true}︡
︠5e67fb88-59e5-47ea-9733-4b2a82047d38s︠
Combinations([1,2,2,3]).list()
︡15b75040-b0f8-4483-89b9-d8ec3b59b66d︡{"stdout":"[[], [1], [2], [3], [1, 2], [1, 3], [2, 2], [2, 3], [1, 2, 2], [1, 2, 3], [2, 2, 3], [1, 2, 2, 3]]\n"}︡{"done":true}︡
︠1836efe7-6e62-416f-ac09-9cfa99d34f03s︠
C = cartesian_product([Compositions(8), Permutations(20)])
C
︡17a5e31f-6004-4b88-9593-4635ca2cbbdc︡{"stdout":"The Cartesian product of (Compositions of 8, Standard permutations of 20)\n"}︡{"done":true}︡
︠13ff68d8-9922-4796-9417-f129bd2fc294s︠
C.cardinality()
︡ae02a204-2799-4301-a4b3-758601959ddc︡{"stdout":"311411457046609920000\n"}︡{"done":true}︡
︠dedd0f42-cc2b-450b-a39b-8ddb120f14b1s︠
D = Derangements(4)
D.list()
︡5e1cb9ea-d876-4415-91f3-55ac714d8da9︡{"stdout":"[[2, 3, 4, 1], [4, 3, 1, 2], [2, 4, 1, 3], [3, 4, 2, 1], [3, 1, 4, 2], [4, 1, 2, 3], [4, 3, 2, 1], [3, 4, 1, 2], [2, 1, 4, 3]]\n"}︡{"done":true}︡
︠62cbf391-27c4-4d0e-b691-113e292926bai︠
%md
# Teorija grafova
︡9d6735b0-a125-4500-815c-efa74c932681︡{"html":"<h1>Teorija grafova</h1>\n"}︡
︠97624591-bb5b-4d06-9a26-eb64e3b4c34bi︠
%md
Nađite najveći podskup prirodnih brojeva manjih od 100 takvih da za svaki par $(a,b)$ vrijedi da $a-b$ nije kvadrat prirodnog broja.
︡0b9cc835-34a7-4d80-b422-a484414b34e7︡{"html":"<p>Nađite najveći podskup prirodnih brojeva manjih od 100 takvih da za svaki par $(a,b)$ vrijedi da $a-b$ nije kvadrat prirodnog broja.</p>\n"}︡
︠bdd7cb56-9912-495c-a8fd-fbed40ac92e3s︠
n = 100
g=Graph(n)
kvadrati = [i*i for i in range(sqrt(n))]
bridovi = [(i,j) for (i,j) in CartesianProduct(range(n),range(n)) if (i!=j and abs(i-j) in kvadrati)]
g.add_edges(bridovi)
g.independent_set()
︡12268959-5396-4093-a5e0-d04f0932560d︡{"stdout":"[3, 5, 8, 10, 15, 20, 22, 25, 27, 32, 37, 42, 49, 55, 60, 70, 75, 77, 82, 87, 92, 94, 97, 99]\n"}︡{"done":true}︡
︠8b74b213-9149-4ce6-8261-7d9215bac55cs︠
g = graphs.CompleteGraph(5)
︡fbf236e0-84d6-428a-acac-13d49d43f7f8︡{"done":true}︡
︠422be72e-5f37-46e8-95ad-937e933c9d80s︠
show(g)
︡2c1a50c9-571e-41c8-bd3b-9b709c097065︡{"d3":{"data":{"charge":0,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0,"height":null,"link_distance":50,"link_strength":0,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"}],"pos":[[6.123233995736766e-17,-1],[-0.9510565162951535,-0.3090169943749475],[-0.5877852522924732,0.8090169943749473],[0.5877852522924729,0.8090169943749476],[0.9510565162951536,-0.3090169943749472]],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠68fae6e9-d79a-46bb-ac18-c46e86c6f064i︠
%md
Ako želimo koristiti tikz za prikzazivanje grafova
︡73ec68c2-999b-4722-b83b-303acb901263︡{"md":"Ako želimo koristiti tikz za prikzazivanje grafova\n"}︡
︠3ad05f5a-9fde-4b0e-830f-0babb18b9b7ds︠
_=latex.eval(latex(g)) #https://github.com/sagemath/cloud/wiki/FAQ#tikzhttps://cloud.sagemath.com/blobs//tmp/tmpNsiUPX.png?uuid=f14a29da-dc1c-40b1-a75a-191265315dc2
︡1188c9c3-5802-4a02-bcb0-82813399c80a︡{"file":{"filename":"/tmp/tmpMnpg5H.png","show":true,"text":null,"uuid":"7fa28c59-93dd-4a1a-b602-8fc960c5299f"},"once":false}︡{"done":true}︡
︠5e09d5e8-2a8f-4394-8779-ec58ef4dfd40s︠
G = Graph()
G.add_vertices(range(10))
G.add_cycle(range(10))
show(G)
︡512271c3-8e5f-4471-a01c-003c2d5fafae︡{"d3":{"data":{"charge":-120,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":9},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":4,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":5,"strength":0,"target":6},{"color":"#aaa","curve":0,"name":"","source":6,"strength":0,"target":7},{"color":"#aaa","curve":0,"name":"","source":7,"strength":0,"target":8},{"color":"#aaa","curve":0,"name":"","source":8,"strength":0,"target":9}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠574183a3-f24c-459b-8ab9-5f9e93cda31bs︠
D = DiGraph()
D.add_cycle(range(4))
show(D)
︡2a2ce5a3-e673-4a25-95ee-a390adeb0eae︡{"d3":{"data":{"charge":-120,"directed":true,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":0}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠5044e4ea-a985-4f45-ad55-1b83534c7ec1s︠
d = {0: [1,4,5], 1: [2,6], 2: [3,7], 3: [4,8], 4: [9], 5: [7,8], 6: [8,9], 7: [9]}
G = Graph(d)
show(G)
︡2b428d7c-3da9-4c6f-9e68-b843da254517︡{"d3":{"data":{"charge":-120,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":6},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":7},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":8},{"color":"#aaa","curve":0,"name":"","source":4,"strength":0,"target":9},{"color":"#aaa","curve":0,"name":"","source":5,"strength":0,"target":7},{"color":"#aaa","curve":0,"name":"","source":5,"strength":0,"target":8},{"color":"#aaa","curve":0,"name":"","source":6,"strength":0,"target":8},{"color":"#aaa","curve":0,"name":"","source":6,"strength":0,"target":9},{"color":"#aaa","curve":0,"name":"","source":7,"strength":0,"target":9}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠4d978555-5bc2-4661-a50e-f2352edffccfs︠
G.add_vertices([10,11,12])
G.vertices()
︡b05e407e-7a3a-4d13-9641-80e0148d51b2︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]\n"}︡{"done":true}︡
︠4c9096f0-b324-42fa-9b14-244d040c05a1s︠
G.adjacency_matrix()
︡217bf97d-24cf-4981-8871-6906269ff66a︡{"stdout":"[0 1 0 0 1 1 0 0 0 0 0 0 0]\n[1 0 1 0 0 0 1 0 0 0 0 0 0]\n[0 1 0 1 0 0 0 1 0 0 0 0 0]\n[0 0 1 0 1 0 0 0 1 0 0 0 0]\n[1 0 0 1 0 0 0 0 0 1 0 0 0]\n[1 0 0 0 0 0 0 1 1 0 0 0 0]\n[0 1 0 0 0 0 0 0 1 1 0 0 0]\n[0 0 1 0 0 1 0 0 0 1 0 0 0]\n[0 0 0 1 0 1 1 0 0 0 0 0 0]\n[0 0 0 0 1 0 1 1 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n"}︡{"done":true}︡
︠0ff5cfe3-eb06-4296-90fb-90e4ebe0fc80s︠
g = graphs.CompleteGraph(5)
g.average_degree()
︡afede818-15b2-475a-9959-5c1765c93f60︡{"stdout":"4\n"}︡{"done":true}︡
︠96b19bd7-f2de-4096-b607-cf3abe46d6a5i︠
%md
`RandomGNP(n,p)` vraća slučajan graf s n vrhova, s time da je svaki brid ubačen s vjerojatnošću p.
︡a253eed1-3ec5-4942-a78c-33523e1fa749︡{"html":"<p><code>RandomGNP(n,p)</code> vraća slučajan graf s n vrhova, s time da je svaki brid ubačen s vjerojatnošću p.</p>\n"}︡
︠5281b2c8-ffa4-4c9d-8eea-fc73f87e8c8as︠
g = graphs.RandomGNP(20,0.5)
g.min_spanning_tree() #default je Kruskalov algoritam


︡1e51914b-04c4-49a4-9227-815b26fdd5d7︡{"stdout":"[(0, 1, None), (0, 7, None), (0, 10, None), (0, 11, None), (0, 16, None), (2, 11, None), (3, 11, None), (4, 16, None), (5, 11, None), (6, 11, None), (8, 14, None), (9, 16, None), (11, 14, None), (12, 16, None), (13, 14, None), (14, 15, None), (16, 17, None), (16, 18, None), (16, 19, None)]\n"}︡{"done":true}︡
︠93d5c0c5-4011-42c6-86bd-1c6285443773s︠
g = graphs.CompleteGraph(5)
tezina = lambda e: 1 / ((e[0] + 1) * (e[1] + 1))
g.min_spanning_tree(algorithm='Prim_fringe', starting_vertex=2, weight_function=tezina) #Primov algoritam
︡39f352b5-cff1-455f-8951-edcb10b16425︡{"stdout":"[(0, 4, None), (1, 4, None), (2, 4, None), (3, 4, None)]\n"}︡{"done":true}︡
︠658cfca5-77b1-442e-b59c-790697eca31cs︠
D = DiGraph({0 : [1, 3], 1 : [2], 2 : [3], 4 : [5, 6], 5 : [6]})
D.connected_components_number()
D.connected_components()
︡6f1ebc01-8325-49bf-a7f5-6f15182d90b3︡{"stdout":"2\n"}︡{"stdout":"[[0, 1, 2, 3], [4, 5, 6]]\n"}︡{"done":true}︡
︠174a57a2-28ed-4d50-b158-41d4c61d8cc1s︠
P = graphs.PetersenGraph()
P.degree(5)
P.degree()
︡0afc131d-d8bc-47b2-b50b-91fd4e61b38f︡{"stdout":"3\n"}︡{"stdout":"[3, 3, 3, 3, 3, 3, 3, 3, 3, 3]\n"}︡{"done":true}︡
︠b83104eb-c622-4f2e-be22-3db167fd7304s︠
G = graphs.CompleteGraph(19)
G.size()
G.delete_edges( [ (5, 6), (7, 8) ] )
G.size()
︡0ad56532-b421-492b-8d65-3ee6c8aca5a3︡{"stdout":"171\n"}︡{"stdout":"169\n"}︡{"done":true}︡
︠c757f859-b757-4d5e-9378-2a77dcd59236s︠
G = graphs.CycleGraph(9)
show(G)
︡ec1ad2e7-6e21-49fb-afbc-6c2fa1780acd︡{"d3":{"data":{"charge":0,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0,"height":null,"link_distance":50,"link_strength":0,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":8},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":4,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":5,"strength":0,"target":6},{"color":"#aaa","curve":0,"name":"","source":6,"strength":0,"target":7},{"color":"#aaa","curve":0,"name":"","source":7,"strength":0,"target":8}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"}],"pos":[[6.123233995736766e-17,-1],[-0.6427876096865394,-0.766044443118978],[-0.984807753012208,-0.17364817766693028],[-0.8660254037844388,0.4999999999999997],[-0.34202014332566855,0.9396926207859084],[0.34202014332566816,0.9396926207859085],[0.8660254037844384,0.5000000000000004],[0.9848077530122081,-0.17364817766692991],[0.6427876096865396,-0.7660444431189778]],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠6612055b-2da4-465f-914e-410674ced945s︠
G.distance(0,5)
︡c5e9a5ab-995c-4aa7-aef1-b8b2332a59d2︡{"stdout":"4\n"}︡{"done":true}︡
︠d4ace164-5412-44f4-8704-288f50924035s︠
G = graphs.CompleteGraph(7)
G.is_eulerian()
G.eulerian_circuit(labels=False)
︡d43550a3-e6b1-4729-a973-9460670ddac6︡{"stdout":"True\n"}︡{"stdout":"[(0, 6), (6, 5), (5, 4), (4, 6), (6, 3), (3, 5), (5, 2), (2, 4), (4, 3), (3, 2), (2, 6), (6, 1), (1, 5), (5, 0), (0, 4), (4, 1), (1, 3), (3, 0), (0, 2), (2, 1), (1, 0)]\n"}︡{"done":true}︡
︠c095c2f3-e6d8-4a15-842d-108b9d53921cs︠
g = G.random_subgraph(0.25)
show(g)
︡df468640-6243-4fab-840e-518e0989dc08︡{"d3":{"data":{"charge":0,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0,"height":null,"link_distance":50,"link_strength":0,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":3},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":2,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":4,"strength":0,"target":5}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"6"}],"pos":[[6.123233995736766e-17,-1],[-0.7818314824680298,-0.6234898018587336],[-0.9749279121818236,0.22252093395631428],[-0.4338837391175583,0.900968867902419],[0.43388373911755795,0.9009688679024193],[0.78183148246803,-0.6234898018587334]],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠9d345a74-05da-41b3-a0a5-8112bf7f2566s︠
g = graphs.CubeGraph(4)
g.is_planar()
︡f02a21dc-9939-41a4-9ae0-7fe47363fef9︡{"stdout":"False\n"}︡{"done":true}︡
︠6534ab92-67cf-42fc-b3b3-4d73e1171a8as︠
g = graphs.CubeGraph(3)
g.is_planar()
︡456513d9-0dfa-40e0-a307-811b685aa42c︡{"stdout":"True\n"}︡{"done":true}︡
︠1df4b899-7fe6-4bbf-b462-b553ae094885s︠
G = Graph( { 0 : [1, 2], 1 : [2], 3 : [4, 5], 4 : [5] } )
show(G)
︡7f3ccf05-72de-4d6f-ac8e-ced76f643eba︡{"d3":{"data":{"charge":-120,"directed":false,"edge_labels":false,"edge_thickness":2,"gravity":0.04,"height":null,"link_distance":50,"link_strength":1,"links":[{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":1},{"color":"#aaa","curve":0,"name":"","source":0,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":1,"strength":0,"target":2},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":4},{"color":"#aaa","curve":0,"name":"","source":3,"strength":0,"target":5},{"color":"#aaa","curve":0,"name":"","source":4,"strength":0,"target":5}],"loops":[],"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"}],"pos":[],"vertex_labels":true,"vertex_size":7,"width":null},"viewer":"graph"}}︡{"done":true}︡
︠f6df0c04-b9b1-417d-918f-7e14b2dc164cs︠
G.is_connected()
︡beb115e9-83b7-4f69-aa75-241b8fbeaf6c︡{"stdout":"False\n"}︡{"done":true}︡
︠e2051f09-e9cf-4fc4-9aff-68e152c00e76s︠
G.add_edge(0,3)
G.is_connected()
︡01adec0d-393b-471f-a81a-5b31b05e333b︡{"stdout":"True\n"}︡{"done":true}︡
︠2d56ed5a-17bd-4932-9a05-b154e6006027s︠
D = graphs.DodecahedralGraph()
D.shortest_path(4, 9)
︡2c4a371a-4b94-49f6-8407-0c88def45959︡{"stdout":"[4, 17, 16, 12, 13, 9]\n"}︡{"done":true}︡
︠eab8cef0-3457-4d6e-a20c-748f99d97508s︠
n = 11
G = graphs.CompleteGraph(n)
ST = G.spanning_trees_count()
ST == n^(n-2)
︡d4010d0a-883e-4af3-a362-cca16153f5be︡{"stdout":"True\n"}︡{"done":true}︡
︠7fb3cd28-8b60-4780-b11c-919902736d3fi︠
%md
# Kriptografija
### RSA

Neka su $p$, $q$ (veliki) prosti brojevi. Neka je $n=p\ast q$. Znamo $\varphi(n)=(p-1)(q-1)$.

Neka je $e$ tzv. enkripcijski eksponent, bilo koji broj koji je relativno prost s $\varphi(n)$. Kako su $e$ i $\varphi(n)$ relativno prosti, postoji multiplikativni inverz $d$: $ed \equiv 1\pmod{\varphi(n)}$. Broj $d$ zovemo dekripcijski eksponent. Parametar $(n,e)$ je javan, dok su faktorizacija $n=pq$ te broj $d$ tajni. Dekripcija se obavlja funkcijom $f(x)=x^e$ a enkripcija funkcijom $g(y)=y^d \mod n$ (pretpostavljamo $x\lt n$).

Par $(n,e)$ zovemo javni ključ a trojku $(p,q,d)$ privatni ključ.

︡cec7fe75-be22-4117-a56a-afb4b26ebffb︡{"html":"<h1>Kriptografija</h1>\n\n<h3>RSA</h3>\n\n<p>Neka su $p$, $q$ (veliki) prosti brojevi. Neka je $n=p\\ast q$. Znamo $\\varphi(n)=(p-1)(q-1)$.</p>\n\n<p>Neka je $e$ tzv. enkripcijski eksponent, bilo koji broj koji je relativno prost s $\\varphi(n)$. Kako su $e$ i $\\varphi(n)$ relativno prosti, postoji multiplikativni inverz $d$: $ed \\equiv 1\\pmod{\\varphi(n)}$. Broj $d$ zovemo dekripcijski eksponent. Parametar $(n,e)$ je javan, dok su faktorizacija $n=pq$ te broj $d$ tajni. Dekripcija se obavlja funkcijom $f(x)=x^e$ a enkripcija funkcijom $g(y)=y^d \\mod n$ (pretpostavljamo $x\\lt n$).</p>\n\n<p>Par $(n,e)$ zovemo javni ključ a trojku $(p,q,d)$ privatni ključ.</p>\n"}︡
︠c704e472-b95c-4a9d-985a-4d40458861d9s︠
p = (2^31) - 1
is_prime(p)
︡4df6d72d-019e-4c92-8a91-ef4f64d22daa︡{"stdout":"True\n"}︡{"done":true}︡
︠a4c6331e-797d-4390-b782-f24bf08d0553s︠
q = (2^61) - 1
is_prime(q)
︡2c93e8b7-cc36-4bcd-a1e0-dde7002f602d︡{"stdout":"True\n"}︡{"done":true}︡
︠df33aa63-6e04-4b83-b1eb-d7fd2355b483s︠
n = p * q
n
︡cb36b772-25ca-4c70-bacb-cd34a26259e0︡{"stdout":"4951760154835678088235319297\n"}︡{"done":true}︡
︠399f7393-2c13-4f68-b33b-88ad065580b8s︠
phi = (p - 1)*(q - 1)
phi
︡76f78de0-fc99-4fbb-ad78-9ee407a69bf6︡{"stdout":"4951760152529835076874141700\n"}︡{"done":true}︡
︠66406ce2-d5a4-47cb-80fc-271b81fbf6efs︠
e = ZZ.random_element(phi)
while gcd(e, phi) != 1:
    e = ZZ.random_element(phi)
︡fa6ee49a-3568-4dfc-be29-b4d326beb8a8︡{"done":true}︡
︠2e81607a-b5e8-443a-bc89-f7fb564e1870s︠
e
︡e69e9620-51f7-4209-8d11-70e2d07d1d16︡{"stdout":"3466954595038139443252761563\n"}︡{"done":true}︡
︠c0a47891-ceca-4c43-a867-59ce547df515s︠
e < n
︡7d66cacd-fd8a-4de6-92c5-255eb3a399dd︡{"stdout":"True\n"}︡{"done":true}︡
︠7625bcb6-697e-4879-8749-9d203c8eddf5i︠
%md
$ed \equiv 1\pmod{\varphi(n)}$ je ekvivalentno s $de-k\varphi(b)=1$, pa $d$ možemo odrediti Euklidovim algoritmom.
︡5502c3e9-4fb5-4bc2-aaee-461df33eea34︡{"html":"<p>$ed \\equiv 1\\pmod{\\varphi(n)}$ je ekvivalentno s $de-k\\varphi(b)=1$, pa $d$ možemo odrediti Euklidovim algoritmom.</p>\n"}︡
︠442e6162-bfd1-45f3-9358-7d26968e6514s︠
b = xgcd(e, phi)
d = Integer(mod(b[1], phi))
d
︡5538475e-da47-4def-ac6f-4b28f02789b4︡{"stdout":"329419668378137302564189727\n"}︡{"done":true}︡
︠1cfb8a4a-9286-4643-899a-3fbb457ec91cs︠
mod(d * e, phi)
︡ff3b53d1-f077-47a7-b54b-1f069af58138︡{"stdout":"1\n"}︡{"done":true}︡
︠bc1963a2-a2d1-4488-b55c-e5326d809116s︠
(n,e) #javni ključ
︡48ea97b5-071d-4d4d-bc5a-87b5b05b40d8︡{"stdout":"(4951760154835678088235319297, 3466954595038139443252761563)\n"}︡{"done":true}︡
︠5160d480-a854-4bfc-bb05-f755c98c6663s︠
(p,q,d) #privatni ključ
︡0d5250a9-4717-41de-94bc-f53eee8fa137︡{"stdout":"(2147483647, 2305843009213693951, 329419668378137302564189727)\n"}︡{"done":true}︡
︠68ad1d80-cac0-4a4e-8c7d-ab093f40c5abs︠
x = "ZDRAVO!" #želimo šifrirati
m = map(ord, x)
m
︡fca7d148-e402-4baa-a720-114d7464cf50︡{"stdout":"[90, 68, 82, 65, 86, 79, 33]\n"}︡{"done":true}︡
︠11b0de65-d10b-4fb4-9537-175baf755033ss︠
m=ZZ(m,base=100)
m
︡28827764-2a9f-4b56-beec-332f7b5d299f︡{"stdout":"33798665826890\n"}︡{"done":true}︡
︠93f9e027-91c7-4155-9380-b5adeedc9625s︠
c = power_mod(m, e, n)
c #šifrirani tekst
︡603d975f-924c-41a2-84c6-1167432aea19︡{"stdout":"4252744825524301971255601045\n"}︡{"done":true}︡
︠8e867949-44fc-45f3-aafe-28b67dd335cbs︠
power_mod(c, d, n) == m

︡a0578987-39e2-435c-be98-523bda13a27f︡{"stdout":"True\n"}︡{"done":true}︡
︠da7eb938-6d17-43e1-b601-c0bfa03e9dafi︠
%md

Ovdje smo samo zagrebali površinu mogućnosti u Sage-u. Ovo je lista modula iz dokumentacije:

Integers, Rationals, etc.
Real and Complex Numbers
Finite Rings and Fields
Algebraic Numbers
Polynomials
Formal Power Series
Function Fields
p-Adic Numbers
Quaternion Algebras
Linear Algebra
Matrices and Spaces of Matrices
Vectors and Modules
Tensors on free modules of finite rank
Other Algebraic Structures
Monoids
Groups
Semirings
Algebras
Discrete Mathematics
Combinatorics
Graph Theory
Quivers
Matroid Theory
Discrete Dynamics
Coding Theory
Game Theory
Calculus
Symbolic Calculus
Mathematical Constants
Elementary and Special Functions
Asymptotic Expansions (experimental)
Geometry and Topology
Combinatorial and Discrete Geometry
Hyperbolic Geometry
Cell Complexes and their Homology
Differential Forms
Manifolds
Parametrized Surfaces
Knot Theory
Number Theory, Algebraic Geometry
Diophantine approximation
Quadratic Forms
L-Functions
Schemes
Elliptic, Plane, and Hyperelliptic Curves
Arithmetic Subgroups of SL_2(Z)
General Hecke Algebras and Hecke Modules
Modular Symbols
Modular Forms
Modular Forms for Hecke Triangle Groups
Modular Abelian Varieties
Miscellaneous Modular-Form-Related Modules
Logic
Symbolic Logic
SAT solvers
Probability and Statistics
Probability
Statistics
Quantitative Finance
Miscellaneous
Cryptography
Numerical Optimization
Databases
Games
︡11e366bc-83bf-4607-adca-61c94f67ad20︡{"done":true,"md":"\nOvdje smo samo zagrebali površinu mogućnosti u Sage-u. Ovo je lista modula iz dokumentacije:\n\nIntegers, Rationals, etc.\nReal and Complex Numbers\nFinite Rings and Fields\nAlgebraic Numbers\nPolynomials\nFormal Power Series\nFunction Fields\np-Adic Numbers\nQuaternion Algebras\nLinear Algebra\nMatrices and Spaces of Matrices\nVectors and Modules\nTensors on free modules of finite rank\nOther Algebraic Structures\nMonoids\nGroups\nSemirings\nAlgebras\nDiscrete Mathematics\nCombinatorics\nGraph Theory\nQuivers\nMatroid Theory\nDiscrete Dynamics\nCoding Theory\nGame Theory\nCalculus\nSymbolic Calculus\nMathematical Constants\nElementary and Special Functions\nAsymptotic Expansions (experimental)\nGeometry and Topology\nCombinatorial and Discrete Geometry\nHyperbolic Geometry\nCell Complexes and their Homology\nDifferential Forms\nManifolds\nParametrized Surfaces\nKnot Theory\nNumber Theory, Algebraic Geometry\nDiophantine approximation\nQuadratic Forms\nL-Functions\nSchemes\nElliptic, Plane, and Hyperelliptic Curves\nArithmetic Subgroups of SL_2(Z)\nGeneral Hecke Algebras and Hecke Modules\nModular Symbols\nModular Forms\nModular Forms for Hecke Triangle Groups\nModular Abelian Varieties\nMiscellaneous Modular-Form-Related Modules\nLogic\nSymbolic Logic\nSAT solvers\nProbability and Statistics\nProbability\nStatistics\nQuantitative Finance\nMiscellaneous\nCryptography\nNumerical Optimization\nDatabases\nGames"}
︠d25f2a36-f1c1-4e4a-8f8f-1815de58bbbci︠
%md
# Magične naredbe

Osim magičnih naredbi `%md`, `%html` i `%latex` koje možemo koristiti u ćelijama Sage radnih bilježnica (mpr. ova ćelija je dobijena korištenjem dekoratora `%md`), postoji još cijeli niz dekoratora koji odgovaraju različitim `modovima`, koje možete vidjeti dolje.
︡8200f07f-7a4a-45b1-b598-806bf33df620︡{"done":true,"md":"# Magične naredbe\n\nOsim magičnih naredbi `%md`, `%html` i `%latex` koje možemo koristiti u ćelijama Sage radnih bilježnica (mpr. ova ćelija je dobijena korištenjem dekoratora `%md`), postoji još cijeli niz dekoratora koji odgovaraju različitim `modovima`, koje možete vidjeti dolje."}
︠a18ef056-5e1f-4c6c-bb61-650f653402e9s︠
print('\n'.join(modes()))
︡4b981687-0605-4411-b4c0-b9e006fe1034︡{"stdout":"%auto\n%axiom\n%capture\n%coffeescript\n%command\n%cython\n%default\n%default_mode\n%exercise\n%file\n%fork\n%fortran\n%fricas\n%gap\n%gap3\n%giac\n%go\n%gp\n%hide\n%hideall\n%html\n%java\n%javascript\n%julia\n%kash\n%lie\n%lisp\n%load\n%macaulay2\n%magma\n%maple\n%mathematica\n%matlab\n%maxima\n%md\n%mupad\n%mwrank\n%octave\n%pandoc\n%perl\n%prun\n%python\n%r\n%reset\n%ruby\n%runfile\n%sage0\n%scilab\n%script\n%sh\n%singular\n%time\n%timeit\n%typeset_mode\n%var\n%wiki\n"}︡{"done":true}︡
︠c97c01cb-3e11-426b-ad0d-936c46c8752c︠
%julia
(1 + 2im)*(2 - 3im)
︡f7505a8c-54a3-49a5-8741-a6da2c84839c︡{"stdout":"8 + 1im"}︡{"done":true}︡
︠ba7325bf-367f-4265-8022-82d1192c0e40i︠
%md
Za neke, kao npr. `%mathematica`, potrebno je da je na računalu instaliran odgovarajući program.
︡fc916cc0-4b70-472c-ad88-35592651c7f8︡{"done":true,"md":"Za neke, kao npr. `%mathematica`, potrebno je da je na računalu instaliran odgovarajući program."}
︠66238855-9158-4ddd-ac21-349d119a3ef6i︠
%md
`%r` omogućava korištenje programskog jezika R
︡d09d2722-f48f-47e9-a6c2-80e9e3eedf04︡{"done":true,"md":"`%r` omogućava korištenje programskog jezika R"}
︠f03226dd-cf21-4734-b842-aa4508eb4ecfs︠
reset('r')
%r
x <- c(1,2,3,4,5,6)
y <- x^2
print(y)
mean(y)
var(y)
︡d7d64a8b-b7bb-4e05-b288-79ffb0726998︡{"stdout":"[1]  1  4  9 16 25 36\n"}︡{"html":"15.1666666666667"}︡{"html":"178.966666666667"}︡{"done":true}︡
︠397172a9-0dc1-4b53-9b62-4327513eb465i︠
%md
`%fortran` omogućuje kompajliranje Fortran koda te njegovo korištenje.
︡1b6b7805-3b77-444f-accf-c24a028ef06e︡{"done":true,"md":"`%fortran` omogućuje kompajliranje Fortran koda te njegovo korištenje."}
︠5ea7d50f-c6c9-4656-84cf-c8c94fe34bc7s︠
%fortran
            SUBROUTINE FIB(A,N)
            INTEGER N
            REAL*8 A(N)
            DO I=1,N
               IF (I.EQ.1) THEN
                  A(I) = 0.0D0
               ELSEIF (I.EQ.2) THEN
                  A(I) = 1.0D0
               ELSE
                  A(I) = A(I-1) + A(I-2)
               ENDIF
            ENDDO
            END
︡7b419460-c69d-4638-94ca-1c17e0184178︡{"stdout":"\n"}︡{"done":true}︡
︠e89ec49a-662b-4d8c-85b2-7e8914f8c948s︠
import numpy
n = numpy.array(range(10),dtype=float)
fib(n,int(10))
n
︡057b15e3-8df7-40df-a09d-3a272571b50d︡{"stdout":"array([  0.,   1.,   1.,   2.,   3.,   5.,   8.,  13.,  21.,  34.])\n"}︡{"done":true}︡
︠982011c7-e2a5-4b4e-bd56-da9025fbec3fs︠
%cython
cimport cython
from libc.math cimport sqrt
cdef double cy_funkcija(double x):
    return sqrt(1-x**2)

def cy_integral4pi(int n):
    cdef double korak, rez
    cdef int i
    korak = 1.0/n
    rez = (cy_funkcija(0)+cy_funkcija(1))/2
    for i in range(n):
        rez += cy_funkcija(i*korak)
    return 4*rez*korak
︡5181caaf-1b63-4a13-a56b-8dfe465ba6c5︡{"stdout":"Defined cy_integral4pi"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/95cb524c-f1ac-4a19-908e-5f47c10f47c1/.sage/temp/compute5-us/32371/spyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_mKohSY_a_pyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_mKohSY_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/95cb524c-f1ac-4a19-908e-5f47c10f47c1/raw/.sage/temp/compute5-us/32371/spyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_mKohSY_a_pyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_mKohSY_a_pyx_0.html"},"once":false}︡{"done":true}︡
︠981593ee-f60d-4284-8209-8cf43ba3c079s︠
%timeit cy_integral4pi(10**7)
︡a7d58254-d92f-4220-a96c-3da6b05c9aa2︡{"stdout":"5 loops, best of 3: 73.1 ms per loop"}︡{"stdout":"\n"}︡{"done":true}︡
︠f89f1eb7-93fc-4b07-8056-890128270cfes︠
%cython
def is2pow(unsigned int n):
    while n != 0 and n%2 == 0:
        n = n >> 1
    return n == 1
︡58d5ae11-d08f-4c34-b284-51b6553dda81︡{"stdout":"Defined is2pow"}︡{"stdout":"\n"}︡{"file":{"filename":"/projects/95cb524c-f1ac-4a19-908e-5f47c10f47c1/.sage/temp/compute5-us/32371/spyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_VsBKYa_a_pyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_VsBKYa_a_pyx_0.html","show":true,"text":"Auto-generated code...","url":"/95cb524c-f1ac-4a19-908e-5f47c10f47c1/raw/.sage/temp/compute5-us/32371/spyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_VsBKYa_a_pyx/_projects_95cb524c_f1ac_4a19_908e_5f47c10f47c1__sage_temp_compute5_us_32371_dir_VsBKYa_a_pyx_0.html"},"once":false}︡{"done":true}︡
︠84e9a7b4-1cf6-4269-9028-7ff71d5cf2das︠
%time [n for n in range(10^5) if is2pow(n)]
︡1924a5e9-1767-4954-99e3-92b2ecf51ccd︡{"stdout":"[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536]\n"}︡{"stdout":"\nCPU time: 0.09 s, Wall time: 0.09 s\n"}︡{"done":true}︡
︠b1494913-3316-4974-b4c9-475a89ca84bas︠
%octave
x = [1; 3; 2]
A = [1, 1, 2; 3, 5, 8; 13, 21, 34]
A'*x
︡5e1446bc-2ba2-4ec3-8d59-376ce33baef4︡{"stdout":"x =\n"}︡{"stdout":"\n"}︡{"stdout":"   1\n"}︡{"stdout":"   3\n"}︡{"stdout":"   2\n"}︡{"stdout":"\n"}︡{"stdout":"A =\n"}︡{"stdout":"\n"}︡{"stdout":"    1    1    2\n"}︡{"stdout":"    3    5    8\n"}︡{"stdout":"   13   21   34\n"}︡{"stdout":"\n"}︡{"stdout":"ans =\n"}︡{"stdout":"\n"}︡{"stdout":"   36\n"}︡{"stdout":"   58\n"}︡{"stdout":"   94\n"}︡{"stdout":"\n"}︡{"done":true}︡
︠82c1fde2-e11b-480f-9c53-d2f9c4f9ce95s︠
sage.version.version
︡4af715ff-5243-45d5-baad-25fc51db3145︡{"stdout":"'7.5'\n"}︡{"done":true}︡
︠c26d4346-4c22-43d9-9ff7-d08b20978d08i︠
%md
## Zadaci za vježbanje

- Napišite interaktivni kod za ispis faktorizacije polinoma $x^n-1$.
- Izračunajte $\frac{\partial^3 f}{\partial x\partial y^2}$ za $f(x,y)=\sin(xy)+\cos(yz)$.
- Izračunajte $\int_{-\infty}^{\infty} \mathrm{e}^{-x^2}d\, x$.
- Kreirajte slučajnu $3\times 3$ matricu nad $\mathbb{Z}$. Nađite njen karakteristični polinom.
- Provjerite je li polinom $x^4+x^2+1$ ireducibilan nad $\mathbb{Q}$.
- Izračunajte koliko ima particija 20-članog skupa koje imaju barem tri elementa od kojih svaki ima barem 3 elementa.
- Kreirajte slučajni graf s 20 vrhova, gdje svaki brid ima vjerojatnost 0.45 da bude ubačen. Iz grafa izbacite dva vrha najmanja stupnja veća ili jednaka 1.
︡c411f85b-2193-418b-83a9-bfd3a4c0e174︡{"done":true,"md":"## Zadaci za vježbanje\n\n- Napišite interaktivni kod za ispis faktorizacije polinoma $x^n-1$.\n- Izračunajte $\\frac{\\partial^3 f}{\\partial x\\partial y^2}$ za $f(x,y)=\\sin(xy)+\\cos(yz)$.\n- Izračunajte $\\int_{-\\infty}^{\\infty} \\mathrm{e}^{-x^2}d\\, x$.\n- Kreirajte slučajnu $3\\times 3$ matricu nad $\\mathbb{Z}$. Nađite njen karakteristični polinom.\n- Provjerite je li polinom $x^4+x^2+1$ ireducibilan nad $\\mathbb{Q}$.\n- Izračunajte koliko ima particija 20-članog skupa koje imaju barem tri elementa od kojih svaki ima barem 3 elementa.\n- Kreirajte slučajni graf s 20 vrhova, gdje svaki brid ima vjerojatnost 0.45 da bude ubačen. Iz grafa izbacite dva vrha najmanja stupnja veća ili jednaka 1."}









