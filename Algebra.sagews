︠434fb97e-9d8d-4f83-8912-b32af76b6850si︠
%md
# Linearna algebra
︡1a341c08-99ba-42b7-920b-7d0bf2898441︡{"md":"# Linearna algebra\n"}︡
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
︡d8072713-8deb-4adb-81ee-2cfd76a2ee3f︡{"stdout":"((1, 0, 0), (0, 1, 0), (0, 0, 1))\n"}︡{"stdout":"(a, b)\n"}︡{"stdout":"(-a + 4*b, 2*a - 9*b, 7*a + 2*b)"}︡{"stdout":"\n"}︡
︠efb7dfd7-bef2-4247-aec0-6ce13c1ad0e0s︠
sqrt(vector1 * vector1)
vector1.norm()
vector1.norm(2)
vector1.norm(Infinity)
︡386e1eb7-adc8-493c-81a5-de897e44ea79︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"3*sqrt(6)\n"}︡{"stdout":"7\n"}︡
︠1c284c75-080e-4534-80e5-83f63d684730s︠
2 * vector1
vector1 * vector2
vector1.dot_product(vector2)
vector1.cross_product(vector2)
︡ce7d8611-579f-482f-a282-75008e5ffcf9︡{"stdout":"(-2, 4, 14)\n"}︡{"stdout":"-8\n"}︡{"stdout":"-8\n"}︡{"stdout":"(67, 30, 1)\n"}︡
︠58f19444-ee7e-42c9-b892-64b9b26a0b2bi︠
%md
Naredba `VectorSpace` kreira vektorski prostor gdje je prvi parametar polje a drugi dimenzija. Tipičan izbor su **ZZ**, **QQ**, **RQ** i **CC**, no Sage podržava izuzetno velik broj polja.
︡b0f961a3-2ce3-42b2-82b7-9bcafd3a444d︡{"html":"<p>Naredba <code>VectorSpace</code> kreira vektorski prostor gdje je prvi parametar polje a drugi dimenzija. Tipičan izbor su <strong>ZZ</strong>, <strong>QQ</strong>, <strong>RQ</strong> i <strong>CC</strong>, no Sage podržava izuzetno velik broj polja.</p>\n"}︡
︠d31d9bf7-b3da-4e9e-8992-b4c2997e1bd8s︠
u = vector(QQ, [1, 2/7, 10/3])
u[1]
︡d5cbe872-1cc2-4f37-b516-53537a2686a1︡{"stdout":"2/7\n"}︡
︠a9dda429-5db0-4033-8b8a-dbce416f25e8i︠
%md
I ostali načini pristupanja elementima naravno funkcioniraju.
︡e82d7bb4-a98c-41a0-83f7-2bd092d4a9f9︡{"html":"<p>I ostali načini pristupanja elementima naravno funkcioniraju.</p>\n"}︡
︠cf91747a-68dc-4eac-af46-85c0e5bde0c4s︠
u[:2]
︡153f4efe-5b55-4eb3-95ac-bc8e9e345eee︡{"stdout":"(1, 2/7)\n"}︡
︠83dc5aa3-bd19-40d8-bd5f-13e6a26a96ces︠
u[2] = numerical_approx(pi, digits=5)
u
︡1e5b3b6a-0914-4aab-a38e-c3a5446f57d9︡{"stdout":"(1, 2/7, 355/113)\n"}︡
︠ba02b9d0-e15b-49a2-aa67-1573f594a982i︠
%md
### Matrice
︡cd6dcc00-ec77-4271-a1dc-88376576b8e1︡{"html":"<h3>Matrice</h3>\n"}︡
︠a3e7f758-15b8-4512-be66-cc3d2b1cceb6s︠
M4 = MatrixSpace(QQ, 4)
show(M4.identity_matrix())
︡a67eacf9-63e5-446e-9ca7-993bfac170c4︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡
︠01ca87c8-9341-467c-8121-d8b61449fdacs︠
M34 = MatrixSpace(QQ, 3, 4)
show(M34.basis())
︡3f3597d0-e236-4903-a9ec-8059ef0b0e74︡{"html":"<div align='center'>[$\\displaystyle \\left(\\begin{array}{rrrr}\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1 \\\\\n0 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n1 &amp; 0 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 1 &amp; 0\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 0 \\\\\n0 &amp; 0 &amp; 0 &amp; 1\n\\end{array}\\right)$]</div>"}︡
︠a3b3ddd4-59cf-426d-a16e-e076f9129251s︠
A = M4.matrix([[0, -1, -1, 1], [1, 1, 1, 1], [2, 4, 1, -2],
       [3, 1, -2, 2]])
b = vector(QQ, [0, 6, -1, 3])
show(A)
show(b)
A.solve_right(b)
A\b
︡de9819bd-bf37-4488-a502-b78fc1041f10︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n0 &amp; -1 &amp; -1 &amp; 1 \\\\\n1 &amp; 1 &amp; 1 &amp; 1 \\\\\n2 &amp; 4 &amp; 1 &amp; -2 \\\\\n3 &amp; 1 &amp; -2 &amp; 2\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(0,\\,6,\\,-1,\\,3\\right)$</div>"}︡{"stdout":"(2, -1, 3, 2)\n"}︡{"stdout":"(2, -1, 3, 2)\n"}︡
︠5b1a860c-ea71-4658-b41c-21728b61f555s︠
A[1]
︡13090391-fdbf-4eea-849b-4c354a4d083a︡{"stdout":"(1, 1, 1, 1)\n"}︡
︠94c490f4-9fac-413e-8f6e-bd86cecfd18cs︠
A[:,0]
︡a658a227-e85b-4e40-a4d6-2fc07d3549d0︡{"stdout":"[0]\n[1]\n[2]\n[3]\n"}︡
︠a0e0c0ea-84ce-4bb3-9156-99ac73db4882s︠
A[:,1] = vector([1,1,1,0])
A
︡1c6a78ff-cd04-4d78-ae86-777c78aa773b︡{"stdout":"[ 0  1 -1  1]\n[ 1  1  1  1]\n[ 2  1  1 -2]\n[ 3  0 -2  2]\n"}︡
︠fc328dc8-c84b-4f4b-b884-e3340232adb1s︠
A.row(2)
A.column(2)
︡6bf066fa-91ac-4a36-95db-b95a16bd00ae︡{"stdout":"(2, 1, 1, -2)\n"}︡{"stdout":"(-1, 1, 1, -2)\n"}︡
︠411b9edb-1dcf-4ac3-b7d9-f3d5476c6811s︠
A.submatrix(2, 2, 2, 2)
︡9a11ec38-d222-401a-a9d8-b3dd7662801f︡{"stdout":"[ 1 -2]\n[-2  2]\n"}︡
︠f1e4156d-a924-4464-9109-77e24be2de82s︠
A = Matrix(QQ, [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
A.rescale_row(1, 2)
A
︡9531e998-4c0a-4e3c-9ce7-b1832ebaec16︡{"stdout":"[ 1  2  3]\n[ 8 10 12]\n[ 7  8  9]\n"}︡
︠b0860180-a404-407f-a544-b9a1d12433e0s︠
A.swap_rows(0, 1)
A
︡5cbb6dd8-dff7-400a-a25a-74008e2ab350︡{"stdout":"[ 8 10 12]\n[ 1  2  3]\n[ 7  8  9]\n"}︡
︠e58760de-6554-4e6a-997d-67191421e1f8s︠
A.add_multiple_of_row(0, 1 ,3)
A
︡eecd9471-9ec4-4b14-b7ce-352a98d61437︡{"stdout":"[11 16 21]\n[ 1  2  3]\n[ 7  8  9]\n"}︡
︠d54a5ea7-61c4-4cfb-842e-4cb65217cea8s︠
A.echelon_form() #Gaussova eliminacija
︡dfd30566-5626-4211-be7a-48d4d22ec968︡{"stdout":"[ 1  0 -1]\n[ 0  1  2]\n[ 0  0  0]\n"}︡
︠8574d347-fe3b-4484-8ba3-0b32df38e463s︠
M3 = MatrixSpace(QQ, 2, 3)
A = M3.matrix([[3, 2, 1], [4, 5, 6]])
B = M3.matrix([[2, 2, 2], [1, 2, 3]])
show(A+B)
show(1/2*A)
︡863a8f69-cfbc-41c2-848f-c23e33f29a1c︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n5 &amp; 4 &amp; 3 \\\\\n5 &amp; 7 &amp; 9\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n\\frac{3}{2} &amp; 1 &amp; \\frac{1}{2} \\\\\n2 &amp; \\frac{5}{2} &amp; 3\n\\end{array}\\right)$</div>"}︡
︠ad11368c-0352-47e7-b39f-547ab85030ces︠
var('a b c d e f')
C = Matrix(QQ, [[4, 2, 1], [5, 3, 7]])
D = Matrix(SR, [[a, b], [c, d], [e, f]])
show(C * D)

︡01727de7-8fe3-4ae3-8e25-6c1eb4e1d230︡{"stdout":"(a, b, c, d, e, f)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr}\n4 \\, a + 2 \\, c + e &amp; 4 \\, b + 2 \\, d + f \\\\\n5 \\, a + 3 \\, c + 7 \\, e &amp; 5 \\, b + 3 \\, d + 7 \\, f\n\\end{array}\\right)$</div>"}︡
︠24d75cb8-c157-4be4-8c11-e07e562eb6des︠
type(D)
︡17f5e181-9bfc-4903-a2ea-c22b90ae9c1f︡{"stdout":"<type 'sage.matrix.matrix_symbolic_dense.Matrix_symbolic_dense'>\n"}︡
︠03b227ef-873c-4a89-8669-6936cf1d75d7s︠
var('x1 x2 x3')
X = vector([x1,x2,x3])
show(C * X)
︡d5dd4a2a-2fe1-4cc5-bfff-e5f7523e67c1︡{"stdout":"(x1, x2, x3)\n"}︡{"html":"<div align='center'>$\\displaystyle \\left(4 \\, x_{1} + 2 \\, x_{2} + x_{3},\\,5 \\, x_{1} + 3 \\, x_{2} + 7 \\, x_{3}\\right)$</div>"}︡
︠4424c67a-8f69-45d1-86ed-4f3098690689s︠
A = matrix(QQ, [[2, 5, 4], [3, 1, 2], [5, 4, 6]])
A.det()
A.rank()
A.transpose()
A.adjoint()
A.inverse()
︡d0bfbc00-6c67-495f-abae-042f0d1a38ac︡{"stdout":"-16\n"}︡{"stdout":"3\n"}︡{"stdout":"[2 3 5]\n[5 1 4]\n[4 2 6]\n"}︡{"stdout":"[ -2 -14   6]\n[ -8  -8   8]\n[  7  17 -13]\n"}︡{"stdout":"[   1/8    7/8   -3/8]\n[   1/2    1/2   -1/2]\n[ -7/16 -17/16  13/16]\n"}︡
︠4c70388a-ce2e-43b9-b637-e8789123755es︠
A.adjoint()/A.det() == A.inverse()
︡7f87e3cf-6bd5-43c9-a69c-cbe5f8b14fff︡{"stdout":"True\n"}︡
︠87d11b47-d510-4fcd-9c0a-f7497ca81089s︠
A.norm(1)
A.norm()
A.norm('frob')
︡cd6910be-b2f5-4edb-aff4-eb7322cdfb04︡{"stdout":"12.0\n"}︡{"stdout":"11.346960138635389"}︡{"stdout":"\n"}︡{"stdout":"11.661903789690601\n"}︡
︠f63240fa-4141-4b0b-8162-75e3d0211e91s︠
A = matrix([[1,2],[3,4]]) #ako ne specificiramo polje, bit će odabrano najmanje koje sadrži sve elemente matrice
type(A)
︡2afea00e-0093-4553-a883-cc4abc6d6bc9︡{"stdout":"<type 'sage.matrix.matrix_integer_dense.Matrix_integer_dense'>\n"}︡
︠e0492e6a-d413-4997-b137-481d3b1a30bes︠
show(block_matrix([[A,-A],[2*A, A^2]]))
︡200f845a-a200-42c7-84b9-4758518d0064︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr|rr}\n1 &amp; 2 &amp; -1 &amp; -2 \\\\\n3 &amp; 4 &amp; -3 &amp; -4 \\\\\n\\hline\n 2 &amp; 4 &amp; 7 &amp; 10 \\\\\n6 &amp; 8 &amp; 15 &amp; 22\n\\end{array}\\right)$</div>"}︡
︠06e5780c-c969-45bc-ba6e-30d6ef2ebca9s︠
A = matrix([[1,2,3],[4,5,6]])
show(block_matrix([1,A,0,0,-A,2], ncols=3))
︡8026386d-db64-4cd7-9a86-a83e32457cde︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rr|rrr|rr}\n1 &amp; 0 &amp; 1 &amp; 2 &amp; 3 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 4 &amp; 5 &amp; 6 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; 0 &amp; -1 &amp; -2 &amp; -3 &amp; 2 &amp; 0 \\\\\n0 &amp; 0 &amp; -4 &amp; -5 &amp; -6 &amp; 0 &amp; 2\n\\end{array}\\right)$</div>"}︡
︠d1157127-a92e-4fe8-a849-3651eadf7f0as︠
A = matrix(3,3,range(9))
A
︡4334a288-2430-44e7-a5c3-4dff85033f74︡{"stdout":"[0 1 2]\n[3 4 5]\n[6 7 8]\n"}︡
︠9e8a9736-df58-443a-b3a5-0f42aeeab219s︠
R.<x> = PolynomialRing(GF(5),'x')
A = random_matrix(R,2,3)
A
︡2283b075-ece3-4d53-9dbd-ade3fab0e683︡{"stdout":"[2*x^2 + 4*x + 4 2*x^2 + 3*x + 1             4*x]\n[4*x^2 + 3*x + 1   2*x^2 + x + 3 4*x^2 + 3*x + 1]\n"}︡
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
︡b8a14d8a-97b1-4833-acec-d22dd9b4a84b︡{"html":"<div align='center'>$\\displaystyle 0$</div>"}︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>[$\\displaystyle \\left(1,\\,1,\\,1\\right)$]</div>"}︡{"html":"<div align='center'>[$\\displaystyle \\left(1,\\,0,\\,-1\\right)$, $\\displaystyle \\left(0,\\,1,\\,3\\right)$]</div>"}︡{"html":"<div align='center'>$\\displaystyle 1$</div>"}︡{"html":"<div align='center'>$\\displaystyle 2$</div>"}︡
︠e4887dad-b013-4e89-b1b8-c115c9ec6139s︠
A.eigenvalues()
︡4c1d663d-74b2-4ad2-9843-81098b1f6ebd︡{"stdout":"[0, 1, 1]\n"}︡
︠b3005073-2dfc-49c5-9468-4886c0fdf4e8s︠
D, P = A.eigenmatrix_right()
show(D)
show(P)
A*P == P*D
︡34c921ca-e8df-4e0a-a91b-ed8bd3af2747︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n0 &amp; 0 &amp; 0 \\\\\n0 &amp; 1 &amp; 0 \\\\\n0 &amp; 0 &amp; 1\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 1 &amp; 0 \\\\\n1 &amp; 0 &amp; 1 \\\\\n1 &amp; -1 &amp; 3\n\\end{array}\\right)$</div>"}︡{"stdout":"True\n"}︡
︠fc1a9298-7def-404b-9790-13a6fa7f0b50s︠
A = Matrix(RDF, [[1, -1, 4], [1, 4, -2], [1, 4, 2], [1, -1, 0]])
type(A)
︡237f9f9a-43ca-4efd-a04f-c578c443f75f︡{"stdout":"<type 'sage.matrix.matrix_real_double_dense.Matrix_real_double_dense'>\n"}︡
︠aefedff5-01f2-4f46-ad95-eac4e4901ba7s︠
Q, R = A.QR()
show(Q)
show(R)
︡76c07ab6-08e8-4b1d-a8d0-ae038c9128ca︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n-0.5 &amp; 0.5 &amp; -0.5 &amp; -0.5 \\\\\n-0.5 &amp; -0.5 &amp; 0.5 &amp; -0.5 \\\\\n-0.5 &amp; -0.5 &amp; -0.5 &amp; 0.5 \\\\\n-0.5 &amp; 0.5 &amp; 0.5 &amp; 0.5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n-2.0 &amp; -3.0 &amp; -2.0 \\\\\n0.0 &amp; -5.0 &amp; 2.0 \\\\\n0.0 &amp; 0.0 &amp; -4.0 \\\\\n0.0 &amp; -0.0 &amp; -0.0\n\\end{array}\\right)$</div>"}︡
︠a3c3eef7-bdd9-4cb4-9287-0ceb52263f79s︠
U, Sigma, V = A.SVD()
show(U)
show(Sigma)
show(V)
︡16c33d7b-79dc-4ba0-b3b7-3a29e0738c66︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrrr}\n-0.313279120424 &amp; 0.771564156303 &amp; -0.237791811076 &amp; -0.5 \\\\\n0.748087126775 &amp; -0.146888948344 &amp; -0.4108397347 &amp; -0.5 \\\\\n0.569322205509 &amp; 0.61893410742 &amp; 0.206864199386 &amp; 0.5 \\\\\n-0.134514199158 &amp; 0.00574110053924 &amp; -0.855495745162 &amp; 0.5\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n6.00328466876 &amp; 0.0 &amp; 0.0 \\\\\n0.0 &amp; 4.9112061916 &amp; 0.0 \\\\\n0.0 &amp; 0.0 &amp; 1.35669706619 \\\\\n0.0 &amp; 0.0 &amp; 0.0\n\\end{array}\\right)$</div>"}︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{rrr}\n0.14485670107 &amp; 0.254387693609 &amp; -0.956192155111 \\\\\n0.952383730605 &amp; 0.226191965094 &amp; 0.204456412486 \\\\\n-0.268294177787 &amp; 0.940278733285 &amp; 0.209509278787\n\\end{array}\\right)$</div>"}︡
︠963191eb-dc76-4bf1-8bb3-ebf8d25c534ds︠
A = matrix(QQ, [[2,4,3],[-4,-6,-3],[3,3,1]])
A.characteristic_polynomial()
A.minimal_polynomial().factor()
︡2e4074a6-22ef-4414-8e67-5d1c20d2fe68︡{"stdout":"x^3 + 3*x^2 - 4\n"}︡{"stdout":"(x - 1) * (x + 2)^2\n"}︡
︠50cfaf7c-ddbe-45c1-873c-581c0f5b9cb6s︠
show(A.jordan_form())
︡702b4d1a-d658-4666-bb44-7bbfcb27fb78︡{"html":"<div align='center'>$\\displaystyle \\left(\\begin{array}{r|rr}\n1 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; -2 &amp; 1 \\\\\n0 &amp; 0 &amp; -2\n\\end{array}\\right)$</div>"}︡
︠ddc2b286-5f0b-4ff0-b97d-861c770d577bs︠
show(A.jordan_form(transformation=True))
︡5c81719b-8277-4bfb-8672-2c93c4386250︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{r|rr}\n1 &amp; 0 &amp; 0 \\\\\n\\hline\n 0 &amp; -2 &amp; 1 \\\\\n0 &amp; 0 &amp; -2\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rrr}\n1 &amp; 1 &amp; 1 \\\\\n-1 &amp; -1 &amp; 0 \\\\\n1 &amp; 0 &amp; -1\n\\end{array}\\right)$)</div>"}︡
︠70491f3e-07d0-4536-8b27-28b55b60584ds︠
A = matrix(QQ, [[1,-1/2],[-1/2,-1]])
A.jordan_form()
︡cc1f92bc-24dd-464e-8bbd-856bf8f7cd61︡{"stderr":"Error in lines 2-2\nTraceback (most recent call last):\n  File \"/projects/66d9f5ce-4356-433a-9d13-31043d9bbbc9/.sagemathcloud/sage_server.py\", line 879, in execute\n    exec compile(block+'\\n', '', 'single') in namespace, locals\n  File \"\", line 1, in <module>\n  File \"sage/matrix/matrix2.pyx\", line 9850, in sage.matrix.matrix2.Matrix.jordan_form (build/cythonized/sage/matrix/matrix2.c:66190)\n    raise RuntimeError(\"Some eigenvalue does not exist in %s.\"  %(A.base_ring()))\nRuntimeError: Some eigenvalue does not exist in Rational Field.\n"}︡
︠ab2c5f0c-3389-4346-99b9-c1cee471f2b2s︠
A.minimal_polynomial()
︡f0525899-4655-460e-9d92-652207646e81︡{"stdout":"x^2 - 5/4\n"}︡
︠75ea76cb-ba1b-47e1-983a-87f37ddb8570s︠
R = QQ[sqrt(5)]
A = A.change_ring(R)
show(A.jordan_form(transformation=True, subdivide=False))
︡2df10c3f-4c4f-4fa5-90e8-d9505f3612e9︡{"html":"<div align='center'>($\\displaystyle \\left(\\begin{array}{rr}\n\\frac{1}{2} \\mathit{sqrt}_{5} &amp; 0 \\\\\n0 &amp; -\\frac{1}{2} \\mathit{sqrt}_{5}\n\\end{array}\\right)$, $\\displaystyle \\left(\\begin{array}{rr}\n1 &amp; 1 \\\\\n-\\mathit{sqrt}_{5} + 2 &amp; \\mathit{sqrt}_{5} + 2\n\\end{array}\\right)$)</div>"}︡
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
︡fa04c711-4e60-4d4a-b2b7-7064ccc41249︡{"stdout":"120"}︡{"stdout":"\n"}︡{"stdout":"[(), (1,2), (1,2,3,4,5), (1,3,4,5), (2,3,4,5), (1,3,5,2,4), (1,2,4)(3,5), (1,3,4,5,2), (1,3,5)(2,4), (1,4,2,5,3), (1,4)(2,3,5), (1,3)(2,5,4), (2,4)(3,5), (1,4,3)(2,5), (1,5,4,3,2), (1,4)(2,5,3), (1,5,3)(2,4), (1,4)(3,5), (1,4,2,3,5), (1,5,3,2,4), (1,3,2,5,4), (1,5,4,2), (1,2,5,4,3), (1,4,3,2,5), (2,5,4,3), (1,5,4,2,3), (1,4,3,2), (1,4,2)(3,5), (1,5,4,3), (1,5,3,2), (1,5,2,4,3), (2,5,3), (4,5), (2,3), (1,5), (2,4,3), (1,3,2), (3,4), (2,5,4), (1,5,4)(2,3), (1,5,2), (1,5,3), (1,5)(2,4,3), (1,4,2), (1,4,3), (1,5,4), (1,2,4,3), (1,2)(4,5), (1,4), (1,2,3,5), (1,2,5,3), (1,2)(3,4), (1,5)(2,3), (3,4,5), (1,2,4,5), (1,3), (2,3)(4,5), (1,2,5), (1,5)(3,4), (2,4), (2,3,4), (1,2,3), (1,2,5,4), (2,5), (1,4,5), (1,2,3,4), (1,2,3)(4,5), (1,5)(2,3,4), (1,4,5)(2,3), (1,5,2,3,4), (1,2,3,5,4), (1,3,4), (1,4,5,2), (2,4,5), (1,2,5)(3,4), (1,2)(3,4,5), (1,3,2,4,5), (1,3,2,5), (1,5,2)(3,4), (1,2,4,3,5), (1,3,5), (1,3,4,2), (1,3,4)(2,5), (1,3)(2,4,5), (1,5,2,3), (1,2,4), (1,3,2)(4,5), (2,3,5), (1,3)(4,5), (1,4)(2,5), (1,3,5,2), (2,5)(3,4), (3,5), (2,4,5,3), (1,3)(2,5), (1,2,5,3,4), (1,5,3,4), (1,3,5,4), (2,3,5,4), (1,4,3,5), (1,3)(2,4), (1,2,4,5,3), (2,4,3,5), (1,4,5,2,3), (1,5,2,4), (1,3,4,2,5), (1,3,2,4), (1,2)(3,5), (1,4,5,3,2), (2,5,3,4), (1,4,2,5), (1,4,3,5,2), (1,4,5,3), (1,4)(2,3), (1,3,5,4,2), (1,5)(2,4), (1,5,3,4,2), (1,4,2,3), (3,5,4), (1,2)(3,5,4)]\n"}︡
︠e0c609f1-caa0-4005-9385-6047be1629ccs︠
S5.identity()
︡8fb14f51-271a-43b8-8655-9a57b9a103c1︡{"stdout":"()\n"}︡
︠03e8fff7-0184-42c5-9e96-65c2a760d5e3s︠
S5.random_element()
︡bebe6fa3-4671-4785-a867-0c8d3d4b7bce︡{"stdout":"(1,5)(2,3)\n"}︡
︠6fb13027-70f7-4b92-a87c-22510cc80c61s︠
r = S5.random_element()
r
r.domain() # tablična notacija
︡840061a0-66bc-4d94-b84a-fa9ba06c0bb5︡{"stdout":"(1,4,3,5,2)\n"}︡{"stdout":"[4, 1, 5, 3, 2]\n"}︡
︠ffb52584-a252-4c06-8203-071853ca371bs︠
s = S5('(1,3)(2,4)')
s.domain()
︡ffdafeca-0448-4155-81a3-8582dbd32b4f︡{"stdout":"[3, 4, 1, 2, 5]\n"}︡
︠8f5fea7b-25c1-4f23-8ee0-359446cd4cb9s︠
t = S5([1,5,4,3,2])
t.domain()
︡be85f784-aff5-435e-8475-d74e2f7aff78︡{"stdout":"[1, 5, 4, 3, 2]\n"}︡
︠f6123784-3a51-4d7e-9edb-15e8c89108das︠
t*s
︡2d1a353b-c2d9-4bfd-b280-97c820d3c078︡{"stdout":"(1,3,2,5,4)\n"}︡
︠13cd2926-2d6c-4077-883b-fd5c779bb31es︠
t.order()
︡c9f4c0a8-51f1-4352-a659-9db362cfbdf4︡{"stdout":"2\n"}︡
︠485ea0a0-e912-473a-874f-bb53615cea5ds︠
t*t
︡a092385b-eaa8-45b1-a8d4-3cb22838d0d9︡{"stdout":"()\n"}︡
︠7605a5b4-1086-446e-9f05-1324f7023885s︠
t.sign()
︡bc00057c-398d-4c5a-8a9e-0b852edb4742︡{"stdout":"1\n"}︡
︠93c41915-64d7-4405-a394-19fffd847167s︠
S4 = SymmetricGroup(4)
S4.is_subgroup(S5)
︡8d510e75-5224-4359-a2d3-10002c5aeabd︡{"stdout":"True\n"}︡
︠ac083b09-04e9-4e3b-80d2-35e7ced38e53s︠
S4.normal_subgroups()
︡73bc5cdd-ce31-4426-8ca5-3f6d7f50590c︡{"stdout":"[Subgroup of (Symmetric group of order 4! as a permutation group) generated by [()], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(1,3)(2,4), (1,4)(2,3)], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(2,4,3), (1,3)(2,4), (1,4)(2,3)], Subgroup of (Symmetric group of order 4! as a permutation group) generated by [(1,2), (1,2,3,4)]]"}︡{"stdout":"\n"}︡
︠984062ef-da3c-48ed-8125-9f0a263168abs︠
H = S5.subgroup([t,s])
H
︡eeee171e-4fae-4bf8-bf0b-51f43e8304cd︡{"stdout":"Subgroup of (Symmetric group of order 5! as a permutation group) generated by [(2,5)(3,4), (1,3)(2,4)]\n"}︡
︠d7b92284-19b4-4d33-ab14-05b9dcf3881cs︠
H.list()
︡56e2825f-0f8e-4ef6-b39a-27111eff4b0f︡{"stdout":"[(), (1,3)(2,4), (2,5)(3,4), (1,3,2,5,4), (1,4,5,2,3), (1,2)(4,5), (1,4)(3,5), (1,2,4,3,5), (1,5,3,4,2), (1,5)(2,3)]\n"}︡
︠545440c9-78ee-4d8a-9e8f-fa094d5aefe1s︠
H.is_abelian()
H.is_cyclic()
︡56fa0682-ee57-43d8-8217-601fbb54af77︡{"stdout":"False\n"}︡{"stdout":"False\n"}︡
︠22320cb8-bdae-454d-8938-017492ee5ffas︠
S3 = SymmetricGroup(3)
S3.cayley_table()
︡9cd026c4-dfab-4e9d-ac36-ac5ec6a32d61︡{"stdout":"*  a b c d e f\n +------------\na| a b c d e f\nb| b a f e d c\nc| c e d a f b\nd| d f a c b e\ne| e c b f a d\nf| f d e b c a\n\n"}︡
︠8a4b7da8-1f69-49eb-8546-ac07a9e5cb05s︠
S3.cayley_table(names='elements')
︡845b7321-5f47-465e-9f38-2fa9adc580af︡{"stdout":"      *       ()   (1,2) (1,2,3) (1,3,2)   (2,3)   (1,3)\n       +------------------------------------------------\n     ()|      ()   (1,2) (1,2,3) (1,3,2)   (2,3)   (1,3)\n  (1,2)|   (1,2)      ()   (1,3)   (2,3) (1,3,2) (1,2,3)\n(1,2,3)| (1,2,3)   (2,3) (1,3,2)      ()   (1,3)   (1,2)\n(1,3,2)| (1,3,2)   (1,3)      () (1,2,3)   (1,2)   (2,3)\n  (2,3)|   (2,3) (1,2,3)   (1,2)   (1,3)      () (1,3,2)\n  (1,3)|   (1,3) (1,3,2)   (2,3)   (1,2) (1,2,3)      ()\n\n"}︡
︠91cde837-cacc-41e6-a928-b61369494fecs︠
S3.cayley_table(names=['id','u1','u3','r1','r2','u2'])
︡396e307c-7ecd-411f-934b-df26d0d5ddda︡{"stdout":" *  id u1 u3 r1 r2 u2\n  +------------------\nid| id u1 u3 r1 r2 u2\nu1| u1 id u2 r2 r1 u3\nu3| u3 r2 r1 id u2 u1\nr1| r1 u2 id u3 u1 r2\nr2| r2 u3 u1 u2 id r1\nu2| u2 r1 r2 u1 u3 id\n\n"}︡
︠49a6ad80-f39b-4f15-9017-6b100dc9364ds︠
r = '(1,3)(2,4)(5)'
s = '(1,3,2)'
K = PermutationGroup([r,s])
K
︡718eb9f2-e5cf-42a5-be2a-a395ccdc0f05︡{"stdout":"Permutation Group with generators [(1,3,2), (1,3)(2,4)]\n"}︡
︠b956137d-1146-4868-9ccb-3196405df371s︠
K.order()
︡1b26a16c-a314-446d-aee7-fe93676dadc7︡{"stdout":"12\n"}︡
︠47b6ee87-5f98-4060-894d-9d0e7b317e3fs︠
D = DihedralGroup(4)
D.list() #prikazana kao podgrupa permutacija
︡8358a069-1f38-4331-b1af-c5818b7e52cf︡{"stdout":"[(), (1,4)(2,3), (1,2,3,4), (1,3)(2,4), (1,3), (2,4), (1,4,3,2), (1,2)(3,4)]\n"}︡
︠51180d6a-ab76-4e05-abc0-08beb25a891es︠
D.subgroups()
︡85ed7393-0bd3-4746-ab08-06902868f239︡{"stdout":"[Subgroup of (Dihedral group of order 8 as a permutation group) generated by [()], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2)(3,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,4)(2,3)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2,3,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2)(3,4), (1,3)(2,4)], Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(2,4), (1,2,3,4), (1,3)(2,4)]]"}︡{"stdout":"\n"}︡
︠0c54ce51-1ff9-471a-93d3-e4334ce0c053s︠
D.center()
︡bda71eb1-b9bf-4b47-b3d5-368b4b5e0d0d︡{"stdout":"Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,3)(2,4)]\n"}︡
︠fa1d0145-dffe-450a-834e-c2bcd863d8f4s︠
D.center().list()
︡bb6f9760-98bd-4df9-872b-7761a3f29c03︡{"stdout":"[(), (1,3)(2,4)]\n"}︡
︠e611404b-a4b5-48e8-bef7-c9e1b2b1a2cbs︠
D.centralizer(D('(1,3)(2,4)'))
︡39d0a72c-87d0-4361-8f7b-36d044a35d07︡{"stdout":"Subgroup of (Dihedral group of order 8 as a permutation group) generated by [(1,2,3,4), (1,4)(2,3)]\n"}︡
︠5c304d04-3ab9-4dc0-869a-3aab6bd4ce32s︠
A4 = AlternatingGroup(4)
A4.cardinality()
︡916f9eb3-dae1-4d8c-8516-6571acb6aaf9︡{"stdout":"12\n"}︡
︠58f9938c-7fbe-435c-8404-36cc43f8c156s︠
g1 = A4('(1,4)(3,2)') ; g2 = A4('(2,4)(1,3)')
H = A4.subgroup([g1,g2]);
H.is_normal(A4);
︡7b90d29f-002e-4962-80b4-3bf6d51952da︡{"stdout":"True\n"}︡
︠06e92b15-26e8-45f3-a049-3438516abda9s︠
Hd = A4.cosets(H, side = 'right')
Hl = A4.cosets(H, side = 'left')
print "Hd = ", Hd
print "Hl = ", Hl
︡4c295c0c-9bc8-42c2-84a0-183bd6c85fc2︡{"stdout":"Hd =  [[(), (1,2)(3,4), (1,3)(2,4), (1,4)(2,3)], [(2,3,4), (1,3,2), (1,4,3), (1,2,4)], [(2,4,3), (1,4,2), (1,2,3), (1,3,4)]]\n"}︡{"stdout":"Hl =  [[(), (1,2)(3,4), (1,3)(2,4), (1,4)(2,3)], [(2,3,4), (1,2,4), (1,3,2), (1,4,3)], [(2,4,3), (1,2,3), (1,3,4), (1,4,2)]]\n"}︡
︠7fee14dc-1942-4597-b82b-13f5edfdd384s︠
A4.conjugacy_classes_representatives()
︡afeb7d6f-2d07-4257-8b0b-00046b27e021︡{"stdout":"[(), (1,2)(3,4), (1,2,3), (1,2,4)]\n"}︡
︠652bb9e5-3e6a-47c6-90e9-fca4f4d93f70s︠
B = DiCyclicGroup(3)
A4.is_isomorphic(B)
︡1d7ad95a-4697-4146-abf1-1eeff083bfba︡{"stdout":"False\n"}︡
︠8fb68d31-e5ea-4539-a79e-34e689e4d283s︠
T = [s for s in S5  if s.order() == 2]
T
︡a02db280-9ae8-42e4-95a0-c3b7e3a49f9d︡{"stdout":"[(1,2), (2,4)(3,5), (1,4)(3,5), (4,5), (2,3), (1,5), (3,4), (1,2)(4,5), (1,4), (1,2)(3,4), (1,5)(2,3), (1,3), (2,3)(4,5), (1,5)(3,4), (2,4), (2,5), (1,3)(4,5), (1,4)(2,5), (2,5)(3,4), (3,5), (1,3)(2,5), (1,3)(2,4), (1,2)(3,5), (1,4)(2,3), (1,5)(2,4)]\n"}︡
︠a9ae875c-f2fc-4daf-baed-0c6ce7a247b7i︠
%md
### Prsteni polinoma
︡a56229d9-07bb-4c70-818e-30294c0a4609︡{"html":"<h3>Prsteni polinoma</h3>\n"}︡
︠8bdff69f-1a44-4d77-b649-60e18de5dc3bs︠
R.<x>=PolynomialRing(ZZ) #x je varijabla polinoma iz polja Z
R
︡45559003-6dd0-448e-82dc-5d1651da42ee︡{"stdout":"Univariate Polynomial Ring in x over Integer Ring\n"}︡
︠af1af755-1a86-436f-9be8-a20bd7e9a1ebs︠
p = 2*x^2 + (1/2)*x + (3/5)
parent(p)
︡78c464b7-b658-4847-a8dd-949f5494c0d0︡{"stdout":"Univariate Polynomial Ring in x over Rational Field\n"}︡
︠08497980-7d12-4c7f-a5a7-d6516e28ad52s︠
S.<y>=PolynomialRing(ZZ)
(1/2)*y in S
︡552d7603-b755-4df6-bc2a-18ef2802f165︡{"stdout":"False\n"}︡
︠5566d171-d0e7-474b-b92f-26e3c1a5725fs︠
f=x+1
g=x^2+x-1
h=1/2*x+3/4
parent(f), parent(g), parent(h)
f+g
g-h
f*g
h^3
︡dec2e587-a779-4415-84d9-7f2b71025148︡{"stdout":"(Univariate Polynomial Ring in x over Integer Ring, Univariate Polynomial Ring in x over Integer Ring, Univariate Polynomial Ring in x over Rational Field)\n"}︡{"stdout":"x^2 + 2*x\n"}︡{"stdout":"x^2 + 1/2*x - 7/4\n"}︡{"stdout":"x^3 + 2*x^2 - 1\n"}︡{"stdout":"1/8*x^3 + 9/16*x^2 + 27/32*x + 27/64\n"}︡
︠c65df025-e052-40c6-a0fb-bf6deb19480ds︠
f/g
parent(f/g)
︡75a96fda-df07-4b54-a3a4-dd43b0dc8a34︡{"stdout":"(x + 1)/(x^2 + x - 1)\n"}︡{"stdout":"Fraction Field of Univariate Polynomial Ring in x over Integer Ring\n"}︡
︠ab09d9b4-afbf-4994-a75b-9f4eff9e2f8bs︠
f=x^6+x^2+1
g=x^3+x+1
f // g
f % g
︡7288b039-ca20-4b09-9686-d21c24cf27a4︡{"stdout":"x^3 - x - 1\n"}︡{"stdout":"2*x^2 + 2*x + 2\n"}︡
︠14f77ac1-7a28-469d-93eb-e9dd92839cc2s︠
p = x^4 + 2*x^3 + 2*x^2 + 2*x + 1
q = x^4 - 1
gcd(p,q)
︡bff95c91-77b7-4466-8717-fec8d123885f︡{"stdout":"x^3 + x^2 + x + 1\n"}︡
︠31d8fae0-2304-4e63-9cd7-6faa4fb28756s︠
(x^3+x+1).is_irreducible()
︡21a0c1bd-098a-4589-bf27-160b7bbc3bb8︡{"stdout":"True\n"}︡
︠b3221bb4-8c46-4ac2-9753-e249ee9dbc9cs︠
(x^3+1).is_irreducible()
︡50507bf1-1371-4a7f-a8ed-85052e2ca7bc︡{"stdout":"False\n"}︡
︠5f7a3006-f4b0-48d3-a41b-5ce8df674644s︠
R.<x,y,z> = PolynomialRing(QQ, 3)
p = -1/2*x - y*z - y + 8*z^2
p.monomials()
p.coefficients()
[ a*b for a,b in zip(p.coefficients(),p.monomials())]
︡caf53461-a3bc-40b8-a43f-ca67c20036e7︡{"stdout":"[y*z, z^2, x, y]\n"}︡{"stdout":"[-1, 8, -1/2, -1]\n"}︡{"stdout":"[-y*z, 8*z^2, -1/2*x, -y]\n"}︡
︠b604521b-cce7-4a21-ae6f-e9e7abe4b47bs︠
p.lc() #vodeći koeficijent
p.lt() #vodeći član
︡9296f432-1827-496a-a67b-a3ac2e69653f︡{"stdout":"-1\n"}︡{"stdout":"-y*z\n"}︡
︠238055f2-1c2a-479b-af53-2db4273417bfs︠
p.total_degree()
p.exponents()
︡433e1e7e-ced5-41e8-b814-ebb29547f340︡{"stdout":"2\n"}︡{"stdout":"[(0, 1, 1), (0, 0, 2), (1, 0, 0), (0, 1, 0)]\n"}︡
︠0bd4b4b8-c6b6-438b-9e1d-6b3932d2fb20i︠
%md
### Elementarna teorija brojeva
︡999126ec-757f-4108-8935-7521ec70595e︡{"html":"<h3>Elementarna teorija brojeva</h3>\n"}︡
︠4338684f-ea53-4252-894d-f9325dc1a7aes︠
gcd(2776, 2452)
︡716771b9-2533-42a5-9171-c95dbb1f344f︡{"stdout":"4\n"}︡
︠e1ad7cf9-aec6-44d0-9f8d-871a304a762es︠
a = 633
b = 331
ext = xgcd(a, b)
ext[0] == ext[1]*a + ext[2]*b
︡c1f11ff4-0060-498e-8641-cacac770ec39︡{"stdout":"True\n"}︡
︠1587a09f-19aa-4179-9fd5-c094a105df0es︠
factor(2600)
prime_divisors(2600)
︡3d4dbe00-78fa-4b77-8aa7-36da84e0da08︡{"stdout":"2^3 * 5^2 * 13\n"}︡{"stdout":"[2, 5, 13]\n"}︡
︠b726d5c1-0fb0-4b6e-8a46-781d8ad499f0s︠
inverse_mod(352, 917)
︡ef34ae48-2f4e-45ba-8338-9fd069be7030︡{"stdout":"508\n"}︡
︠816a2b89-6447-4b38-8e9e-0a43c8465516i︠
%md
multiplikativni inverz od 352 mod 917; znači postoji `m` takav da vrijedi `352*508 == m*917+1`
︡6153a0e0-b69f-4e04-a6c4-5900d1db9112︡{"html":"<p>multiplikativni inverz od 352 mod 917; znači postoji <code>m</code> takav da vrijedi <code>352*508 == m*917+1</code></p>\n"}︡
︠fe75e2a3-6745-4bb6-96dd-84fa549846a4s︠
euler_phi(345)
︡dfca02b4-7b55-47ef-8088-8e2aad03775f︡{"stdout":"176\n"}︡
︠96aa5a2e-34c4-4294-bc71-531467e27d1cs︠
m = random_prime(10000)
n = random_prime(10000)
euler_phi(m*n) == euler_phi(m) * euler_phi(n)
︡11dc5f72-6ccc-4a44-968b-8fb828f43f07︡{"stdout":"True\n"}︡
︠173af210-9cdc-4e3d-94a9-81f870b2b666s︠
is_prime(14547073)
︡1461eac9-91ce-4a00-b22e-2af170bc9a72︡{"stdout":"False\n"}︡
︠4ecebba5-574b-4cf7-8828-8648851fd33fs︠
p = random_prime(10^21, True) #bez `True` računanje će biti puno brže, uz malu šansu da broj nije prost
is_prime(p)
︡e822451a-b921-437f-aaa7-cbe8b62c04e5︡{"stdout":"True\n"}︡
︠a8e9d0fc-558b-4713-b809-742d9221adc0s︠
prime_range(500, 550)
primes_first_n(20)
︡ba6bac3a-1196-4a56-849c-1297b9ce86da︡{"stdout":"[503, 509, 521, 523, 541, 547]\n"}︡{"stdout":"[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71]\n"}︡
︠c0255080-8040-4921-8896-949733ca2332i︠
%html
Kongruencije: $a\equiv b \pmod{n}$.
Broj $b$ možemo izračunati pomoću sljedećeg koda: <code>mod(a,n)</code>
︡dc72d98d-b891-45cc-a4cd-90609a25f442︡{"html":"Kongruencije: $a\\equiv b \\pmod{n}$.\nBroj $b$ možemo izračunati pomoću sljedećeg koda: <code>mod(a,n)</code>"}︡
︠7ce147e4-ba8a-4023-be59-03072772b9afs︠
mod(23, 5)
︡01539323-56e0-44e1-8129-686d6c78feab︡{"stdout":"3\n"}︡
︠ee13cf93-cef0-41dd-abb5-4a5280185f51i︠
%html
$a^m \mod n$
︡bd9cbbe9-3886-4620-907a-8c5b9f7f58ed︡{"html":"$a^m \\mod n$"}︡
︠f3e7f819-3343-4517-bc73-35c28c71e929s︠
power_mod(15, 831, 23)
︡d607424c-9957-4b49-afec-2b5fc3800646︡{"stdout":"10\n"}︡
︠6576ac93-0c16-47ac-a41a-84af24ffc092i︠
%md
# Kombinatorika
︡608c3b0e-6c69-47cb-9976-c5c8595d9c23︡{"html":"<h1>Kombinatorika</h1>\n"}︡
︠f0fd878d-04fe-4ff7-8d08-f7a61a39a371s︠
boje = Set(["pik", "herc", "karo", "tref"])
vrijednosti = Set([2, 3, 4, 5, 6, 7, 8, 9, 10,"luda", "kraljica", "kralj", "as"])
karte = CartesianProduct(vrijednosti, boje).map(tuple)
karte.random_element()
︡56c9fa2b-6b36-404e-b788-ddb8984a9e5e︡{"stdout":"(10, 'tref')\n"}︡
︠35f5d89b-8abf-41eb-84dd-c9b137d1a095s︠
ruke = Subsets(karte, 5)
ruke.random_element()
︡0386e615-cec8-42be-9b65-7601a96c5b8e︡{"stdout":"{(4, 'karo'), (7, 'karo'), (9, 'pik'), (7, 'tref'), (8, 'tref')}\n"}︡
︠8ad1e218-8ae3-45e5-b78b-64d0b23c8b03s︠
ruke.cardinality()
︡9ba94975-4c33-4197-ba78-557bfad19e48︡{"stdout":"2598960\n"}︡
︠1ac1c505-94ab-48a2-8342-d8abe311888as︠
S = Subsets([1,2,3,4], 2)
S.random_element()
S.cardinality()
︡9bdd7eb7-4404-44b3-ae70-8be999b917c0︡{"stdout":"{1, 4}\n"}︡{"stdout":"6\n"}︡
︠666bb64f-0b66-43b5-a1a4-b6b70e75866es︠
E = Set([1,2,3,4])
S = Subsets(Subsets(Subsets(E)))
S.cardinality()
︡170c2e0a-58f3-4551-bd95-624451e5d345︡{"stdout":"2003529930406846464979072351560255750447825475569751419265016973710894059556311453089506130880933348101038234342907263181822949382118812668869506364761547029165041871916351587966347219442930927982084309104855990570159318959639524863372367203002916969592156108764948889254090805911457037675208500206671563702366126359747144807111774815880914135742720967190151836282560618091458852699826141425030123391108273603843767876449043205960379124490905707560314035076162562476031863793126484703743782954975613770981604614413308692118102485959152380195331030292162800160568670105651646750568038741529463842244845292537361442533614373729088303794601274724958414864915930647252015155693922628180691650796381064132275307267143998158508811292628901134237782705567421080070065283963322155077831214288551675554073345107213112427399562982719769150054883905223804357045848197956393157853510018992000024141963706813559840464039472194016069517690156119726982337890017641517190051133466306898140219383481435426387306539552969691388024158161859561100640362119796101859534802787167200122604642492385111393400464351623867567078745259464670903886547743483217897012764455529409092021959585751622973333576159552394885297579954028471943529913543763705986928913757153740001986394332464890052543106629669165243419174691389632476560289415199775477703138064781342309596190960654591300890188887588084733625956065444888501447335706058817090162108499714529568344061979690565469813631162053579369791403236328496233046421066136200220175787851857409162050489711781820400187282939943446186224328009837323764931814789848119452713007440220765680910376203999203492023906626264491909167985461515778839060397720759279378852241294301017458086862263369284725851403039615558564330385450688652213114813638408384778263790459607186876728509763471271988890680478243230394718650525660978150729861141430305816927924971409161059417185352275887504477592218301158780701975535722241400019548102005661773589781499532325208589753463547007786690406429016763808161740550405117670093673202804549339027992491867306539931640720492238474815280619166900933805732120816350707634351669869625020969023162859350071874190579161241536897514808261904847946571736601005892476655445840838334790544144817684255327207315586349347605137419779525190365032198020108764738368682531025183377533908861426184800374008082238104076468878471647552945326947661700424461063311238021134588694532200116564076327023074292426051582811070387018345324567635625951430032037432740780879056283663406965030844225855967039271869461158513793386475699748568670079823960604393478850861649260304945061743412365828352144806726676841807083754862211408236579802961200027441324438432402331257403545019352428776430880232850855886089962774458164680857875115807014743763867976955049991643998284357290415378143438847303484261903388841494031366139854257635577105335580206622185577060082551288893332226436281984838613239570676191409638533832374343758830859233722284644287996245605476932428998432652677378373173288063210753211238680604674708428051166488709084770291208161104912555598322366244868556651402684641209694982590565519216188104341226838996283071654868525536914850299539675503954938371853405900096187489473992880432496373165753803673586710175783994818471798498246948060532081996066183434012476096639519778021441199752546704080608499344178256285092726523709898651539462193004607364507926212975917698293892367015170992091531567814439791248475706237804600009918293321306880570046591458387208088016887445835557926258465124763087148566313528934166117490617526671492672176128330845273936469244582892571388877839056300482483799839692029222215486145902373478222682521639957440801727144146179559226175083889020074169926238300282286249284182671243405751424188569994272331606998712986882771820617214453142574944015066139463169197629181506579745526236191224848063890033669074365989226349564114665503062965960199720636202603521917776740668777463549375318899587866282125469797102065747232721372918144666659421872003474508942830911535189271114287108376159222380276605327823351661555149369375778466670145717971901227117812780450240026384758788339396817962950690798817121690686929538248529830023476068454114178139110648560236549754227497231007615131870024053910510913817843721791422528587432098524957878034683703337818421444017138688124249984418618129271198533315382567321870421530631197748535214670955334626336610864667332292409879849256691109516143618601548909740241913509623043612196128165950518666022030715613684732364660868905014263913906515063908199378852318365059897299125404479443425166774299659811849233151555272883274028352688442408752811283289980625912673699546247341543333500147231430612750390307397135252069338173843322950701049061867539433130784798015655130384758155685236218010419650255596181934986315913233036096461905990236112681196023441843363334594927631946101716652913823717182394299216272538461776065694542297877071383198817036964588689811863210976900355735884624464835706291453052757101278872027965364479724025405448132748391794128826423835171949197209797145936887537198729130831738033911016128547415377377715951728084111627597186384924222802373441925469991983672192131287035585307966942713416391033882754318613643490100943197409047331014476299861725424423355612237435715825933382804986243892498222780715951762757847109475119033482241412025182688713728193104253478196128440176479531505057110722974314569915223451643121848657575786528197564843508958384722923534559464521215831657751471298708225909292655638836651120681943836904116252668710044560243704200663709001941185557160472044643696932850060046928140507119069261393993902735534545567470314903886022024639948260501762431969305640666366626090207048887438898907498152865444381862917382901051820869936382661868303915273264581286782806601337500096593364625146091723180312930347877421234679118454791311109897794648216922505629399956793483801699157439700537542134485874586856047286751065423341893839099110586465595113646061055156838541217459801807133163612573079611168343863767667307354583494789788316330129240800836356825939157113130978030516441716682518346573675934198084958947940983292500086389778563494693212473426103062713745077286156922596628573857905533240641849018451328284632709269753830867308409142247659474439973348130810986399417379789657010687026734161967196591599588537834822988270125605842365589539690306474965584147981310997157542043256395776070485100881578291408250777738559790129129407309462785944505859412273194812753225152324801503466519048228961406646890305102510916237770448486230229488966711380555607956620732449373374027836767300203011615227008921843515652121379215748206859356920790214502277133099987729459596952817044582181956080965811702798062669891205061560742325686842271306295009864421853470810407128917646906550836129916694778023822502789667843489199409657361704586786242554006942516693979292624714524945408858422726153755260071904336329196375777502176005195800693847635789586878489536872122898557806826518192703632099480155874455575175312736471421295536494084385586615208012115079075068553344489258693283859653013272046970694571546959353658571788894862333292465202735853188533370948455403336565356988172582528918056635488363743793348411845580168331827676834646291995605513470039147876808640322629616641560667508153710646723108461964247537490553744805318226002710216400980584497526023035640038083472053149941172965736785066421400842696497103241919182121213206939769143923368374709228267738708132236680086924703491586840991153098315412063566123187504305467536983230827966457417620806593177265685841681837966106144963432544111706941700222657817358351259821080769101961052229263879745049019254311900620561906577452416191913187533984049343976823310298465893318373015809592522829206820862230332585280119266496314441316442773003237792274712330696417149945532261035475145631290668854345426869788447742981777493710117614651624183616680254815296335308490849943006763654806102940094693750609845588558043970485914449584445079978497045583550685408745163316464118083123079704389849190506587586425810738422420591191941674182490452700288263983057950057341711487031187142834184499153456702915280104485145176055306971441761368582384102787659324662689978418319620312262421177391477208004883578333569204533935953254564897028558589735505751235129536540502842081022785248776603574246366673148680279486052445782673626230852978265057114624846595914210278122788941448163994973881884622768244851622051817076722169863265701654316919742651230041757329904473537672536845792754365412826553581858046840069367718605020070547247548400805530424951854495267247261347318174742180078574693465447136036975884118029408039616746946288540679172138601225419503819704538417268006398820656328792839582708510919958839448297775647152026132871089526163417707151642899487953564854553553148754978134009964854498635824847690590033116961303766127923464323129706628411307427046202032013368350385425360313636763575212604707425311209233402837482949453104727418969287275572027615272268283376741393425652653283068469997597097750005560889932685025049212884068274139881631540456490350775871680074055685724021758685439053228133770707415830756269628316955687424060527726485853050611356384851965918968649596335568216975437621430778665934730450164822432964891270709898076676625671517269062058815549666382573829274182082278960684488222983394816670984039024283514306813767253460126007269262969468672750794346190439996618979611928750519442356402644303271737341591281496056168353988188569484045342311424613559925272330064881627466723523751234311893442118885085079358163848994487544756331689213869675574302737953785262542329024881047181939037220666894702204258836895840939998453560948869946833852579675161882159410981624918741813364726965123980677561947912557957446471427868624053750576104204267149366084980238274680575982591331006919941904651906531171908926077949119217946407355129633864523035673345588033313197080365457184791550432654899559705862888286866606618021882248602144999973122164138170653480175510438406624412822803616648904257377640956326482825258407669045608439490325290526337532316509087681336614242398309530806549661879381949120033919489494065132398816642080088395554942237096734840072642705701165089075196155370186264797456381187856175457113400473810762763014953309735174180655479112660938034311378532532883533352024934365979129341284854970946826329075830193072665337782559314331110963848053940859283988907796210479847919686876539987477095912788727475874439806779824968278272200926449944559380414608770641941810440758269805688038949654616587983904660587645341810289907194293021774519976104495043196841503455514044820928933378657363052830619990077748726922998608279053171691876578860908941817057993404890218441559791092676862796597583952483926734883634745651687016166240642424241228961118010615682342539392180052483454723779219911228595914191877491793823340010078128326506710281781396029120914720100947878752551263372884222353869490067927664511634758101193875319657242121476038284774774571704578610417385747911301908583877890152334343013005282797038580359815182929600305682612091950943737325454171056383887047528950563961029843641360935641632589408137981511693338619797339821670761004607980096016024823096943043806956620123213650140549586250615282588033022908385812478469315720323233601899469437647726721879376826431828382603564520699468630216048874528424363593558622333506235945002890558581611275341783750455936126130852640828051213873177490200249552738734585956405160830583053770732533971552620444705429573538361113677523169972740292941674204423248113875075631319078272188864053374694213842169928862940479635305150560788126366206497231257579019598873041195626227343728900516561111094111745277965482790471250581999077498063821559376885546498822938985408291325129076478386322494781016753491693489288104203015610283386143827378160946341335383578340765314321417150655877547820252454780657301342277470616744241968952613164274104695474621483756288299771804186785084546965619150908695874251184435837306590951460980451247409411373899927822492983367796011015387096129749705566301637307202750734759922943792393824427421186158236161317886392553095117188421298508307238259729144142251579403883011359083331651858234967221259621812507058113759495525022747274674369887131926670769299199084467161228738858457584622726573330753735572823951616964175198675012681745429323738294143824814377139861906716657572945807804820559511881687188075212971832636442155336787751274766940790117057509819575084563565217389544179875074523854455200133572033332379895074393905312918212255259833790909463630202185353848854825062897715616963860712382771725621313460549401770413581731931763370136332252819127547191443450920711848838366818174263342949611870091503049165339464763717766439120798347494627397822171502090670190302469762151278521956142070806461631373236517853976292092025500288962012970141379640038055734949269073535145961208674796547733692958773628635660143767964038430796864138563447801328261284589184898528048048844180821639423974014362903481665458114454366460032490618763039502356402044530748210241366895196644221339200757479128683805175150634662569391937740283512075666260829890491877287833852178522792045771846965855278790447562192663992008409302075673925363735628390829817577902153202106409617373283598494066652141198183810884515459772895164572131897797907491941013148368544639616904607030107596818933741217575988165127000761262789169510406315857637534787420070222051070891257612361658026806815858499852631465878086616800733264676830206391697203064894405628195406190685242003053463156621891327309069687353181641094514288036605995220248248886711554429104721929134248346438705368508648749099178812670565665387191049721820042371492740164460943459845392536706132210616533085662021188968234005752675486101476993688738209584552211571923479686888160853631615862880150395949418529489227074410828207169303387818084936204018255222271010985653444817207470756019245915599431072949578197878590578940052540122867517142511184356437184053563024181225473266093302710397968091064939272722683035410467632591355279683837705019855234621222858410557119921731717969804339317707750755627056047831779844447637560254637033369247114220815519973691371975163241302748712199863404548248524570118553342675264715978310731245663429805221455494156252724028915333354349341217862037007260315279870771872491234494477147909520734761385425485311552773301030342476835865496093722324007154518129732692081058424090557725645803681462234493189708138897143299831347617799679712453782310703739151473878692119187566700319321281896803322696594459286210607438827416919465162267632540665070881071030394178860564893769816734159025925194611823642945652669372203155504700213598846292758012527715422016629954863130324912311029627923723899766416803497141226527931907636326136814145516376656559839788489381733082668779901962886932296597379951931621187215455287394170243669885593888793316744533363119541518404088283815193421234122820030950313341050704760159987985472529190665222479319715440331794836837373220821885773341623856441380700541913530245943913502554531886454796252260251762928374330465102361057583514550739443339610216229675461415781127197001738611494279501411253280621254775810512972088465263158094806633687670147310733540717710876615935856814098212967730759197382973441445256688770855324570888958320993823432102718224114763732791357568615421252849657903335093152776925505845644010552192644505312073756287744998163646332835816140330175813967359427327690448920361880386754955751806890058532927201493923500525845146706982628548257883267398735220457228239290207144822219885587102896991935873074277815159757620764023951243860202032596596250212578349957710085626386118233813318509014686577064010676278617583772772895892746039403930337271873850536912957126715066896688493880885142943609962012966759079225082275313812849851526902931700263136328942095797577959327635531162066753488651317323872438748063513314512644889967589828812925480076425186586490241111127301357197181381602583178506932244007998656635371544088454866393181708395735780799059730839094881804060935959190907473960904410150516321749681412100765719177483767355751000733616922386537429079457803200042337452807566153042929014495780629634138383551783599764708851349004856973697965238695845994595592090709058956891451141412684505462117945026611750166928260250950770778211950432617383223562437601776799362796099368975191394965033358507155418436456852616674243688920371037495328425927131610537834980740739158633817967658425258036737206469351248652238481341663808061505704829059890696451936440018597120425723007316410009916987524260377362177763430621616744884930810929901009517974541564251204822086714586849255132444266777127863728211331536224301091824391243380214046242223349153559516890816288487989988273630445372432174280215755777967021666317047969728172483392841015642274507271779269399929740308072770395013581545142494049026536105825409373114653104943382484379718606937214444600826798002471229489405761853892203425608302697052876621377373594394224114707074072902725461307358541745691419446487624357682397065703184168467540733466346293673983620004041400714054277632480132742202685393698869787607009590048684650626771363070979821006557285101306601010780633743344773073478653881742681230743766066643312775356466578603715192922768440458273283243808212841218776132042460464900801054731426749260826922155637405486241717031027919996942645620955619816454547662045022411449404749349832206807191352767986747813458203859570413466177937228534940031631599544093684089572533438702986717829770373332806801764639502090023941931499115009105276821119510999063166150311585582835582607179410052528583611369961303442790173811787412061288182062023263849861515656451230047792967563618345768105043341769543067538041113928553792529241347339481050532025708728186307291158911335942014761872664291564036371927602306283840650425441742335464549987055318726887926424102147363698625463747159744354943443899730051742525110877357886390946812096673428152585919924857640488055071329814299359911463239919113959926752576359007446572810191805841807342227734721397723218231771716916400108826112549093361186780575722391018186168549108500885272274374212086524852372456248697662245384819298671129452945515497030585919307198497105414181636968976131126744027009648667545934567059936995464500558921628047976365686133316563907395703272034389175415267500915011198856872708848195531676931681272892143031376818016445477367518353497857924276463354162433601125960252109501612264110346083465648235597934274056868849224458745493776752120324703803035491157544831295275891939893680876327685438769557694881422844311998595700727521393176837831770339130423060958999137314684569010422095161967070506420256733873446115655276175992727151877660010238944760539789516945708802728736225121076224091810066700883474737605156285533943565843756271241244457651663064085939507947550920463932245202535463634444791755661725962187199279186575490857852950012840229035061514937310107009446151011613712423761426722541732055959202782129325725947146417224977321316381845326555279604270541871496236585252458648933254145062642337885651464670604298564781968461593663288954299780722542264790400616019751975007460545150060291806638271497016110987951336633771378434416194053121445291855180136575558667615019373029691932076120009255065081583275508499340768797252369987023567931026804136745718956641431852679054717169962990363015545645090044802789055701968328313630718997699153166679208958768572290600915472919636381673596673959975710326015571920237348580521128117458610065152598883843114511894880552129145775699146577530041384717124577965048175856395072895337539755822087777506072339445587895905719156736"}︡{"stdout":"\n"}︡
︠feb1dd18-07bc-4589-b853-0c0d33e45f4cs︠
C = SetPartitions([1,2,3])
C.list()
︡72a38436-faa2-4a8a-8492-58179e030365︡{"stdout":"[{{1, 2, 3}}, {{1}, {2, 3}}, {{1, 3}, {2}}, {{1, 2}, {3}}, {{1}, {2}, {3}}]\n"}︡
︠111b00c1-9346-42fe-91c0-921fa9d332a2s︠
[[binomial(n,i) for i in range(n+1)] for n in range(10)]
︡a274b0cf-6bfc-4e71-b53a-7a16b86b4400︡{"stdout":"[[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1], [1, 5, 10, 10, 5, 1], [1, 6, 15, 20, 15, 6, 1], [1, 7, 21, 35, 35, 21, 7, 1], [1, 8, 28, 56, 70, 56, 28, 8, 1], [1, 9, 36, 84, 126, 126, 84, 36, 9, 1]]\n"}︡
︠4d1a5548-0779-4214-8f30-6ee2cd7db789s︠
C = Permutations(4)
C
︡b6c4146e-a1f5-473b-b63f-dff1fb44a8a2︡{"stdout":"Standard permutations of 4\n"}︡
︠f61962fe-8b79-4070-9e0b-a2e5f5404910s︠
C.list()
︡612b3dd6-7de0-4807-a954-eed0b7e65ce1︡{"stdout":"[[1, 2, 3, 4], [1, 2, 4, 3], [1, 3, 2, 4], [1, 3, 4, 2], [1, 4, 2, 3], [1, 4, 3, 2], [2, 1, 3, 4], [2, 1, 4, 3], [2, 3, 1, 4], [2, 3, 4, 1], [2, 4, 1, 3], [2, 4, 3, 1], [3, 1, 2, 4], [3, 1, 4, 2], [3, 2, 1, 4], [3, 2, 4, 1], [3, 4, 1, 2], [3, 4, 2, 1], [4, 1, 2, 3], [4, 1, 3, 2], [4, 2, 1, 3], [4, 2, 3, 1], [4, 3, 1, 2], [4, 3, 2, 1]]\n"}︡
︠4b08901f-4fef-44bd-8855-7006367ea123s︠
C = Compositions(5)
C.list()
list(Compositions(5, max_length=2))
︡a9d8615a-e4e4-451f-b96a-cc840aef4ac9︡{"stdout":"[[1, 1, 1, 1, 1], [1, 1, 1, 2], [1, 1, 2, 1], [1, 1, 3], [1, 2, 1, 1], [1, 2, 2], [1, 3, 1], [1, 4], [2, 1, 1, 1], [2, 1, 2], [2, 2, 1], [2, 3], [3, 1, 1], [3, 2], [4, 1], [5]]\n"}︡{"stdout":"[[5], [4, 1], [3, 2], [2, 3], [1, 4]]\n"}︡
︠ac7124f2-7720-4d7d-a09c-e384210dd088s︠
C = Combinations(range(4))
C.list()
︡bf5f8387-a688-4b88-a7b2-05d1574ea840︡{"stdout":"[[], [0], [1], [2], [3], [0, 1], [0, 2], [0, 3], [1, 2], [1, 3], [2, 3], [0, 1, 2], [0, 1, 3], [0, 2, 3], [1, 2, 3], [0, 1, 2, 3]]\n"}︡
︠5e67fb88-59e5-47ea-9733-4b2a82047d38s︠
Combinations([1,2,2,3]).list()
︡f6ef1c8b-7768-46ed-a6a9-8756fc41378e︡{"stdout":"[[], [1], [2], [3], [1, 2], [1, 3], [2, 2], [2, 3], [1, 2, 2], [1, 2, 3], [2, 2, 3], [1, 2, 2, 3]]\n"}︡
︠1836efe7-6e62-416f-ac09-9cfa99d34f03s︠
C = CartesianProduct(Compositions(8), Permutations(20))
C
︡92cc4f65-79aa-4dc6-9906-b56e8adb9761︡{"stdout":"Cartesian product of Compositions of 8, Standard permutations of 20\n"}︡
︠13ff68d8-9922-4796-9417-f129bd2fc294s︠
C.cardinality()
︡938d974a-3e64-4563-85d2-c028d7bd78f3︡{"stdout":"311411457046609920000\n"}︡
︠dedd0f42-cc2b-450b-a39b-8ddb120f14b1s︠
D = Derangements(4)
D.list()
︡59ba069a-f61a-4205-b380-7bcaaf3f7b15︡{"stdout":"[[2, 3, 4, 1], [4, 3, 1, 2], [2, 4, 1, 3], [3, 4, 2, 1], [3, 1, 4, 2], [4, 1, 2, 3], [4, 3, 2, 1], [3, 4, 1, 2], [2, 1, 4, 3]]\n"}︡
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
︡09eaa14e-aa78-4e2a-9326-cef0cabcc2be︡{"stdout":"[3, 5, 8, 10, 15, 20, 22, 25, 27, 32, 37, 42, 49, 55, 60, 70, 75, 77, 82, 87, 92, 94, 97, 99]"}︡{"stdout":"\n"}︡
︠8b74b213-9149-4ce6-8261-7d9215bac55cs︠
g = graphs.CompleteGraph(5)
show(g)
︡f4cfe99a-c1ae-4539-8016-0cc9631daa08︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":0,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":3,"name":""}],"pos":[[6.123233995736766e-17,-1],[-0.9510565162951535,-0.3090169943749475],[-0.5877852522924732,0.8090169943749473],[0.5877852522924729,0.8090169943749476],[0.9510565162951536,-0.3090169943749472]],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0,"width":null,"charge":0,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"}]}}}︡{"html":"<div align='center'></div>"}︡
︠68fae6e9-d79a-46bb-ac18-c46e86c6f064is︠
%md
Ako želimo koristiti tikz za prikzazivanje grafova
︡73ec68c2-999b-4722-b83b-303acb901263︡{"md":"Ako želimo koristiti tikz za prikzazivanje grafova\n"}︡
︠3ad05f5a-9fde-4b0e-830f-0babb18b9b7ds︠
_=latex.eval(latex(g)) #https://github.com/sagemath/cloud/wiki/FAQ#tikz
︡eee0037b-ee77-424a-a616-e60d3e98d9a3︡{"once":false,"file":{"show":true,"uuid":"3d7cf818-ad85-4ce1-901e-4bd3572d39f3","filename":"/tmp/tmpj0nQ_A.png"}}︡
︠5e09d5e8-2a8f-4394-8779-ec58ef4dfd40s︠
G = Graph()
G.add_vertices(range(10))
G.add_cycle(range(10))
show(G)
︡c887555a-2b80-47cd-a523-454eaadf82de︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":5,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":6,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":6,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":7,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":8,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"}]}}}︡{"html":"<div align='center'></div>"}︡
︠574183a3-f24c-459b-8ab9-5f9e93cda31bs︠
D = DiGraph()
D.add_cycle(range(4))
show(D)
︡b4a15b11-4d65-4f2b-b3d9-551124a9fc2c︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":0,"color":"#aaa","curve":0,"source":3,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":true,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"}]}}}︡{"html":"<div align='center'></div>"}︡
︠5044e4ea-a985-4f45-ad55-1b83534c7ec1s︠
d = {0: [1,4,5], 1: [2,6], 2: [3,7], 3: [4,8], 4: [9], 5: [7,8], 6: [8,9], 7: [9]}
G = Graph(d)
show(G)
︡c4eb97ad-161c-4059-99a2-2fe666f1e697︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":5,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":6,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":6,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":6,"name":""},{"strength":0,"target":9,"color":"#aaa","curve":0,"source":7,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"},{"group":"0","name":"9"}]}}}︡{"html":"<div align='center'></div>"}︡
︠4d978555-5bc2-4661-a50e-f2352edffccfs︠
G.add_vertices([10,11,12])
G.vertices()
︡6a7a6231-97ec-4862-963b-3ad1fd2fe0b6︡{"stdout":"[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]\n"}︡
︠4c9096f0-b324-42fa-9b14-244d040c05a1s︠
G.adjacency_matrix()
︡5f3d69d1-f5b5-43d3-a840-21cd9f12f03e︡{"stdout":"[0 1 0 0 1 1 0 0 0 0 0 0 0]\n[1 0 1 0 0 0 1 0 0 0 0 0 0]\n[0 1 0 1 0 0 0 1 0 0 0 0 0]\n[0 0 1 0 1 0 0 0 1 0 0 0 0]\n[1 0 0 1 0 0 0 0 0 1 0 0 0]\n[1 0 0 0 0 0 0 1 1 0 0 0 0]\n[0 1 0 0 0 0 0 0 1 1 0 0 0]\n[0 0 1 0 0 1 0 0 0 1 0 0 0]\n[0 0 0 1 0 1 1 0 0 0 0 0 0]\n[0 0 0 0 1 0 1 1 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n[0 0 0 0 0 0 0 0 0 0 0 0 0]\n"}︡
︠0ff5cfe3-eb06-4296-90fb-90e4ebe0fc80s︠
g = graphs.CompleteGraph(5)
g.average_degree()
︡d0455757-04da-47af-9320-994c3f203527︡{"stdout":"4\n"}︡
︠96b19bd7-f2de-4096-b607-cf3abe46d6a5i︠
%md
`RandomGNP(n,p)` vraća slučajan graf s n vrhova, s time da je svaki brid ubačen s vjerojatnošću p.
︡a253eed1-3ec5-4942-a78c-33523e1fa749︡{"html":"<p><code>RandomGNP(n,p)</code> vraća slučajan graf s n vrhova, s time da je svaki brid ubačen s vjerojatnošću p.</p>\n"}︡
︠5281b2c8-ffa4-4c9d-8eea-fc73f87e8c8as︠
g = graphs.RandomGNP(20,0.5)
g.min_spanning_tree() #default je Kruskalov algoritam


︡92637f1c-8939-4d84-83a4-c2b4a58914ee︡{"stdout":"[(0, 1, None), (0, 2, None), (0, 3, None), (0, 7, None), (0, 8, None), (0, 9, None), (0, 10, None), (0, 11, None), (0, 12, None), (0, 14, None), (0, 15, None), (0, 16, None), (0, 18, None), (0, 19, None), (1, 6, None), (2, 4, None), (2, 5, None), (2, 17, None), (3, 13, None)]\n"}︡
︠93d5c0c5-4011-42c6-86bd-1c6285443773s︠
g = graphs.CompleteGraph(5)
tezina = lambda e: 1 / ((e[0] + 1) * (e[1] + 1))
g.min_spanning_tree(algorithm='Prim_fringe', starting_vertex=2, weight_function=tezina) #Primov algoritam
︡f6caa571-c310-41c3-974a-8d6093171c19︡{"stdout":"[(2, 4), (4, 3), (4, 1), (4, 0)]\n"}︡
︠658cfca5-77b1-442e-b59c-790697eca31cs︠
D = DiGraph({0 : [1, 3], 1 : [2], 2 : [3], 4 : [5, 6], 5 : [6]})
D.connected_components_number()
D.connected_components()
︡fd508847-70d1-4bcd-9cbf-ac90fbb109af︡{"stdout":"2\n"}︡{"stdout":"[[0, 1, 2, 3], [4, 5, 6]]\n"}︡
︠174a57a2-28ed-4d50-b158-41d4c61d8cc1s︠
P = graphs.PetersenGraph()
P.degree(5)
P.degree()
︡9a4c2e54-373f-493a-b718-ca1453319c4e︡{"stdout":"3\n"}︡{"stdout":"[3, 3, 3, 3, 3, 3, 3, 3, 3, 3]\n"}︡
︠b83104eb-c622-4f2e-be22-3db167fd7304s︠
G = graphs.CompleteGraph(19)
G.size()
G.delete_edges( [ (5, 6), (7, 8) ] )
G.size()
︡bb8006c0-7142-4cdc-8f52-82259681ad86︡{"stdout":"171\n"}︡{"stdout":"169\n"}︡
︠c757f859-b757-4d5e-9378-2a77dcd59236s︠
G = graphs.CycleGraph(9)
show(G)
︡d2823620-d551-4509-89d4-7e7868092e06︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":0,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":3,"color":"#aaa","curve":0,"source":2,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":5,"color":"#aaa","curve":0,"source":4,"name":""},{"strength":0,"target":6,"color":"#aaa","curve":0,"source":5,"name":""},{"strength":0,"target":7,"color":"#aaa","curve":0,"source":6,"name":""},{"strength":0,"target":8,"color":"#aaa","curve":0,"source":7,"name":""}],"pos":[[6.123233995736766e-17,-1],[-0.6427876096865394,-0.766044443118978],[-0.984807753012208,-0.17364817766693028],[-0.8660254037844388,0.4999999999999997],[-0.34202014332566855,0.9396926207859084],[0.34202014332566816,0.9396926207859085],[0.8660254037844384,0.5000000000000004],[0.9848077530122081,-0.17364817766692991],[0.6427876096865396,-0.7660444431189778]],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0,"width":null,"charge":0,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"},{"group":"0","name":"6"},{"group":"0","name":"7"},{"group":"0","name":"8"}]}}}︡{"html":"<div align='center'></div>"}︡
︠6612055b-2da4-465f-914e-410674ced945s︠
G.distance(0,5)
︡86baf10d-4e84-4b75-b82a-d4aad2da93ab︡{"stdout":"4\n"}︡
︠d4ace164-5412-44f4-8704-288f50924035s︠
G = graphs.CompleteGraph(7)
G.is_eulerian()
G.eulerian_circuit(labels=False)
︡44a38c0c-cd50-435b-8413-9c1eaf814284︡{"stdout":"True\n"}︡{"stdout":"[(0, 6), (6, 5), (5, 4), (4, 6), (6, 3), (3, 5), (5, 2), (2, 4), (4, 3), (3, 2), (2, 6), (6, 1), (1, 5), (5, 0), (0, 4), (4, 1), (1, 3), (3, 0), (0, 2), (2, 1), (1, 0)]\n"}︡
︠c095c2f3-e6d8-4a15-842d-108b9d53921cs︠
g = G.random_subgraph(0.25)
show(g)
︡521f25eb-490b-4bf7-bd88-ae2b7d16aede︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":0,"links":[{"strength":0,"target":2,"color":"#aaa","curve":0,"source":0,"name":""}],"pos":[[6.123233995736766e-17,-1],[-0.8660254037844388,0.4999999999999997],[0.6427876096865396,-0.7660444431189778]],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0,"width":null,"charge":0,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"3"},{"group":"0","name":"8"}]}}}︡{"html":"<div align='center'></div>"}︡
︠9d345a74-05da-41b3-a0a5-8112bf7f2566s︠
g = graphs.CubeGraph(4)
g.is_planar()
︡1e806f1e-2b63-4270-b2fd-b9ea56de3ce2︡{"stdout":"False\n"}︡
︠6534ab92-67cf-42fc-b3b3-4d73e1171a8as︠
g = graphs.CubeGraph(3)
g.is_planar()
︡591ba84f-9c95-4830-b9b0-afec3387c2a9︡{"stdout":"True\n"}︡
︠1df4b899-7fe6-4bbf-b462-b553ae094885s︠
G = Graph( { 0 : [1, 2], 1 : [2], 3 : [4, 5], 4 : [5] } )
show(G)
︡8627b568-8e8c-4ee5-8b36-81ba94529278︡{"d3":{"viewer":"graph","data":{"link_distance":50,"link_strength":1,"links":[{"strength":0,"target":1,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":0,"name":""},{"strength":0,"target":2,"color":"#aaa","curve":0,"source":1,"name":""},{"strength":0,"target":4,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":5,"color":"#aaa","curve":0,"source":3,"name":""},{"strength":0,"target":5,"color":"#aaa","curve":0,"source":4,"name":""}],"pos":[],"height":null,"edge_thickness":2,"loops":[],"edge_labels":false,"vertex_size":7,"vertex_labels":true,"directed":false,"gravity":0.04,"width":null,"charge":-120,"nodes":[{"group":"0","name":"0"},{"group":"0","name":"1"},{"group":"0","name":"2"},{"group":"0","name":"3"},{"group":"0","name":"4"},{"group":"0","name":"5"}]}}}︡{"html":"<div align='center'></div>"}︡
︠f6df0c04-b9b1-417d-918f-7e14b2dc164cs︠
G.is_connected()
︡ca1f11e8-ed66-46ff-9500-5ffa0439a2ea︡{"stdout":"False\n"}︡
︠e2051f09-e9cf-4fc4-9aff-68e152c00e76s︠
G.add_edge(0,3)
G.is_connected()
︡e4281e2f-6ef3-43a8-aeb8-0f9b17837a94︡{"stdout":"True\n"}︡
︠2d56ed5a-17bd-4932-9a05-b154e6006027s︠
D = graphs.DodecahedralGraph()
D.shortest_path(4, 9)
︡3ed029bf-c658-4c4f-affd-70c4b84d4b8d︡{"stdout":"[4, 17, 16, 12, 13, 9]\n"}︡
︠eab8cef0-3457-4d6e-a20c-748f99d97508s︠
n = 11
G = graphs.CompleteGraph(n)
ST = G.spanning_trees_count()
ST == n^(n-2)
︡b63e6f3c-8015-42bf-bd47-5a681fad7f29︡{"stdout":"True\n"}︡
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
︡a1998f33-a22c-46c4-ac20-9cb56b157b4d︡{"stdout":"True\n"}︡
︠a4c6331e-797d-4390-b782-f24bf08d0553s︠
q = (2^61) - 1
is_prime(q)
︡3586e7d3-6e9a-402d-bae7-fdb3dc1a7ccf︡{"stdout":"True\n"}︡
︠df33aa63-6e04-4b83-b1eb-d7fd2355b483s︠
n = p * q
n
︡124fb57d-884b-4189-9d64-2d87013af13a︡{"stdout":"4951760154835678088235319297\n"}︡
︠399f7393-2c13-4f68-b33b-88ad065580b8s︠
phi = (p - 1)*(q - 1)
phi
︡fae2926d-059b-4845-9a6b-084c00a9e0d1︡{"stdout":"4951760152529835076874141700\n"}︡
︠66406ce2-d5a4-47cb-80fc-271b81fbf6efs︠
e = ZZ.random_element(phi)
while gcd(e, phi) != 1:
    e = ZZ.random_element(phi)
︡20357ef3-ae3c-436f-9cf6-3976f043644d︡
︠2e81607a-b5e8-443a-bc89-f7fb564e1870s︠
e
︡594d7edc-1f23-44fc-ab54-642afc040cf9︡{"stdout":"2628838848919140830704713637\n"}︡
︠c0a47891-ceca-4c43-a867-59ce547df515s︠
e < n
︡b0307e3f-62d3-455b-a931-c0124afbc916︡{"stdout":"True\n"}︡
︠7625bcb6-697e-4879-8749-9d203c8eddf5i︠
%md
$ed \equiv 1\pmod{\varphi(n)}$ je ekvivalentno s $de-k\varphi(b)=1$, pa $d$ možemo odrediti Euklidovim algoritmom.
︡5502c3e9-4fb5-4bc2-aaee-461df33eea34︡{"html":"<p>$ed \\equiv 1\\pmod{\\varphi(n)}$ je ekvivalentno s $de-k\\varphi(b)=1$, pa $d$ možemo odrediti Euklidovim algoritmom.</p>\n"}︡
︠442e6162-bfd1-45f3-9358-7d26968e6514s︠
b = xgcd(e, phi)
d = Integer(mod(b[1], phi))
d
︡055069dd-998d-4dbb-b827-db6d76df489e︡{"stdout":"4866028626169608483550731973\n"}︡
︠1cfb8a4a-9286-4643-899a-3fbb457ec91cs︠
mod(d * e, phi)
︡39ea1e69-34b6-45c7-a636-8d03cab2402a︡{"stdout":"1\n"}︡
︠bc1963a2-a2d1-4488-b55c-e5326d809116s︠
(n,e) #javni ključ
︡6520c44b-b689-4169-877f-a6ad621e5c64︡{"stdout":"(4951760154835678088235319297, 2628838848919140830704713637)\n"}︡
︠5160d480-a854-4bfc-bb05-f755c98c6663s︠
(p,q,d) #privatni ključ
︡1c9a4ee1-1811-436f-bb04-0c8c0be43ca6︡{"stdout":"(2147483647, 2305843009213693951, 4866028626169608483550731973)\n"}︡
︠68ad1d80-cac0-4a4e-8c7d-ab093f40c5abs︠
x = "ZDRAVO!" #želimo šifrirati
m = map(ord, x)
m
︡8904c777-2978-4b4b-8085-d97241330d0d︡{"stdout":"[90, 68, 82, 65, 86, 79, 33]\n"}︡
︠2b608e84-d588-4d34-9062-4dde35b4f70ds︠
m = ZZ(list(reversed(m)), 100)
m
︡d203d2b6-9fd0-406b-8b14-2b3bb661c1e8︡{"stdout":"90688265867933\n"}︡
︠93f9e027-91c7-4155-9380-b5adeedc9625s︠
c = power_mod(m, e, n)
c #šifrirani tekst
︡4c9c7e5c-84c5-4144-9fee-390e4c51b26c︡{"stdout":"289441552496695744128635811\n"}︡
︠8e867949-44fc-45f3-aafe-28b67dd335cbs︠
power_mod(c, d, n) == m

︡5c93f411-02e9-4538-9d57-e4cedbb6c8aa︡{"stdout":"True\n"}︡
︠bd749b52-1f08-434f-b27b-bf6aaec080ffis︠
%md
Ovdje smo samo zagrebali površinu mogućnosti u Sage-u. Ovo je lista modula iz dokumentacije:

_Algebras Arithgroup Calculus Categories Coding Coercion Combinat Constants Cryptography Data Structures Databases Diophantine Approximation Dynamics Finance Finite Rings Function Fields Functions Game Theory Games Geometry Generic Graph-1 Graphs Groups Hecke Homology Interfaces Lfunctions Libs Logic Matrices Matroids Modabvar Modfrm Modfrm Hecketriangle Modmisc Modsym Modules Monoids Number Fields Numerical Padics Parallel Plane Curves Plot3D Plotting Polynomial Rings Power Series Probability Quadratic Forms Quat Algebras Quivers Repl Riemannian Geometry Rings Rings Numerical Rings Standard Sat Schemes Semirings Stats Structure Tensor Tensor Free Modules_
︡18b3e218-b26d-4f22-88d7-9fd50a589085︡{"md":"Ovdje smo samo zagrebali površinu mogućnosti u Sage-u. Ovo je lista modula iz dokumentacije:\n\n_Algebras Arithgroup Calculus Categories Coding Coercion Combinat Constants Cryptography Data Structures Databases Diophantine Approximation Dynamics Finance Finite Rings Function Fields Functions Game Theory Games Geometry Generic Graph-1 Graphs Groups Hecke Homology Interfaces Lfunctions Libs Logic Matrices Matroids Modabvar Modfrm Modfrm Hecketriangle Modmisc Modsym Modules Monoids Number Fields Numerical Padics Parallel Plane Curves Plot3D Plotting Polynomial Rings Power Series Probability Quadratic Forms Quat Algebras Quivers Repl Riemannian Geometry Rings Rings Numerical Rings Standard Sat Schemes Semirings Stats Structure Tensor Tensor Free Modules_\n"}︡
︠4842ab69-d812-4ba7-88b5-d8666b747486︠









