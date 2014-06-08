︠67002e25-1033-4e34-a79e-ec0ea85906b9i︠
%md
# Magične naredbe

Osim dekoratora `%md`, `%html` i `%latex`, postoji još cijeli niz dekoratora, koje možemo izlistati s `%magics`
︡cd41007f-6554-4fac-9282-d57029d7bb4a︡{"html":"<h1>Magične naredbe</h1>\n\n<p>Osim dekoratora <code>%md</code>, <code>%html</code> i <code>%latex</code>, postoji još cijeli niz dekoratora, koje možemo izlistati s <code>%magics</code></p>\n"}︡
︠b144b8b5-2cad-4453-ae0a-682464ad2a26︠
%magics
︡0ece6035-3cb0-4e47-b1c0-aec384671981︡{"stdout":"%auto\n%axiom\n%capture\n%coffeescript\n%command\n%cython\n%default\n%default_mode\n%exercise\n%file\n%fork\n%fortran\n%fricas\n%gap\n%gap3\n%giac\n%go\n%gp\n%hide\n%hideall\n%html\n%javascript\n%kash\n%lie\n%lisp\n%load\n%macaulay2\n%magics\n%magma\n%maple\n%mathematica\n%matlab\n%maxima\n%md\n%mupad\n%mwrank\n%octave\n%perl\n%prun\n%python\n%r\n%reset\n%ruby\n%runfile\n%sage0\n%scilab\n%script\n%sh\n%singular\n%time\n%timeit\n%typeset_mode\n%var\n"}︡
︠40c831b0-01d6-4b88-9f1b-ffd911a82340i︠
%md
Za neke, kao npr. `%mathematica`, potrebno je da je na računalu instaliran odgovarajući program.
︡ec2354f6-35da-46c0-90bd-bfb792dd60b0︡{"html":"<p>Za neke, kao npr. <code>%mathematica</code>, potrebno je da je na računalu instaliran odgovarajući program.</p>\n"}︡
︠12041877-5454-4ddb-8b3f-5a8a4b5ca942i︠
%md
`%r` omogućava korištenje programskog jezika R
︡afa5f109-f3e5-4d58-bd5a-82f7ca7260df︡{"html":"<p><code>%r</code> omogućava korištenje programskog jezika R</p>\n"}︡
︠852182c3-5e6b-41ec-b137-14db6c343393︠
%r
x <- c(1,2,3,4,5,6)
y <- x^2
print(y)
mean(y)
var(y)
︡b3d0bd66-5b00-45fc-a6e0-d945f89f2800︡{"stdout":"[1]  1  4  9 16 25 36\n[1] 15.16667\n[1] 178.9667"}︡
︠e912d302-6880-4964-b036-e35df9b13178i︠
%md
`%fortran` omogućuje kompajliranje Fortran koda te njegovo korištenje.
︡88200a14-c5a4-4594-8fce-f412a1fdbeef︡{"html":"<p><code>%fortran</code> omogućuje kompajliranje Fortran koda te njegovo korištenje.</p>\n"}︡
︠4fe673ee-e680-4bf0-a0fc-45a17aedace2︠
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
︡bd30957d-67a0-4618-ac07-a1656f391589︡
︠c90f2fa1-cf40-4e66-bb40-d0504e616fd8︠
import numpy
n = numpy.array(range(10),dtype=float)
fib(n,int(10))
n
︡d0a5f3c3-2f59-40b5-8455-c28cd4324875︡{"stdout":"array([  0.,   1.,   1.,   2.,   3.,   5.,   8.,  13.,  21.,  34.])\n"}︡
︠754c5fe8-58ea-452c-9940-4cc8acbe8fb3︠
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
︡6b2a9d54-d83c-47a5-9405-a1897a0727bf︡{"html":"<a href='/f01515fe-479d-40e9-9bae-08bfd0b59e76/raw/.sage/temp/compute20dc0/20762/spyx/_projects_f01515fe_479d_40e9_9bae_08bfd0b59e76__sage_temp_compute20dc0_20762_dir_5UqFdv_a_pyx/_projects_f01515fe_479d_40e9_9bae_08bfd0b59e76__sage_temp_compute20dc0_20762_dir_5UqFdv_a_pyx_0.html' target='_new' class='btn btn-small' style='margin-top: 1ex'>Auto-generated code... &nbsp;<i class='fa fa-external-link'></i></a>"}︡
︠90e2a520-d9dc-46cf-b2e4-50fced3a84ff︠
%timeit cy_integral4pi(10**7)
︡54702e13-27b2-4ad2-9fd9-118adea2bfff︡{"stdout":"5 loops, best of 3: 64.6 ms per loop"}︡{"stdout":"\n"}︡
︠f3ae2267-6bfc-4edc-9b42-3cc335e9644d︠
%cython
def is2pow(unsigned int n):
    while n != 0 and n%2 == 0:
        n = n >> 1
    return n == 1
︡26d73034-64fa-41d8-b9ec-6054eb0128d7︡{"html":"<a href='/f01515fe-479d-40e9-9bae-08bfd0b59e76/raw/.sage/temp/compute20dc0/20762/spyx/_projects_f01515fe_479d_40e9_9bae_08bfd0b59e76__sage_temp_compute20dc0_20762_dir_AoqJ7__a_pyx/_projects_f01515fe_479d_40e9_9bae_08bfd0b59e76__sage_temp_compute20dc0_20762_dir_AoqJ7__a_pyx_0.html' target='_new' class='btn btn-small' style='margin-top: 1ex'>Auto-generated code... &nbsp;<i class='fa fa-external-link'></i></a>"}︡
︠eb42fd35-cb28-4dbd-8fc1-286c96d4cec4︠
%time [n for n in range(10^5) if is2pow(n)]
︡b7390c54-33f1-43cc-a868-cb8db6012e24︡{"stdout":"[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536]"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 0.16 s, Wall time: 0.16 s\n"}︡
︠f006d39b-dd2a-4cb1-a62a-3d260e747a7c︠
%python
def slow_is2pow(n):
    while n != 0 and n%2 == 0:
        n = n >> 1
    return n == 1
︡a333075e-5a44-49a7-9321-ab20d0d294b2︡
︠a6a893cc-af02-4f26-a0ef-87086c708756︠
%time [n for n in range(10^5) if slow_is2pow(n)]
︡0d3f9f7c-7b96-48cf-9bee-5030f8801c45︡{"stdout":"[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536]"}︡{"stdout":"\n"}︡{"stdout":"CPU time: 0.21 s, Wall time: 0.21 s\n"}︡
︠be5f3400-98c3-48c8-bb71-e00d8c18e7a8︠
%octave
x = [1; 3; 2]
A = [1, 1, 2; 3, 5, 8; 13, 21, 34]
A'*x
︡630749b6-8f5a-4e6a-8d35-610430d9e55d︡{"stdout":"A = [1, 1, 2; 3, 5, 8; 13, 21, 34]\nA'*x\nx =\n\n 1\n 3\n 2\n\n\n\n 1 1 2\n 3 5 8\n 13 21 34\n\n\n\n 36\n 58\n 94\n\n"}︡
︠f1aac114-c83d-4b5d-bad1-1cf1269e1829︠
︡9269c1e9-d42f-4043-bbe8-d759182fcbee︡
︠e7259490-1d0a-49c4-9876-3d111081eefbi︠
%md
`%exercise` omogućava kreiranje sučelja za vježbanje.

Varijable:

`title`: naslov

`question`: pitanje

`answer`: odgovor

`hints`: upute (opcionalno)

`attempt`: odgovor korisnika

[Ovdje](https://github.com/sagemath/cloud/blob/master/sage_salvus.py) možete pogledati kako je `%exercise` implementiran.

︡df7e1599-d5e3-46a6-a788-b583217d19e3︡{"html":"<p><code>%exercise</code> omogućava kreiranje sučelja za vježbanje.</p>\n\n<p>Varijable:</p>\n\n<p><code>title</code>: naslov</p>\n\n<p><code>question</code>: pitanje</p>\n\n<p><code>answer</code>: odgovor</p>\n\n<p><code>hints</code>: upute (opcionalno)</p>\n\n<p><code>attempt</code>: odgovor korisnika</p>\n\n<p><a href=\"https://github.com/sagemath/cloud/blob/master/sage_salvus.py\">Ovdje</a> možete pogledati kako je <code>%exercise</code> implementiran.</p>\n"}︡
︠1b45a83f-7df6-44eb-b521-63637cb34fcb︠
%exercise
k = randint(2,5)
title = "Add %s numbers"%k
v = [randint(1,10) for _ in range(k)]
question = "What is the sum $%s$?"%(' + '.join([str(x) for x in v]))
answer = sum(v)
hints = ['This is basic arithmetic.', 'The sum is near %s.'%(answer+randint(1,5)), "The answer is %s."%answer]
def check(attempt):
      c = Integer(attempt) - answer
      if c == 0:
          return True
      if abs(c) >= 10:
          return False, "Gees -- not even close!"
      if c < 0:
          return False, "too low"
      if c > 0:
          return False, "too high"
︡55bab724-0906-4762-afaf-b5e4d154ee29︡{"interact":{"style":"None","flicker":true,"layout":[[["go",1,null],["title",11,""]],[["",12,null]],[["times",12,"<b>Times:</b>"]]],"id":"e5ba35fd-b2fd-445b-a918-703d73ecf527","controls":[{"control_type":"button","default":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Go&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;","label":"","width":null,"classes":"btn-large btn-success","var":"go","icon":"fa-refresh"},{"default":"<h3 class=\"lighten\">Add 2 numbers</h3>","var":"title","classes":null,"control_type":"text","label":"title"},{"default":"","var":"times","classes":null,"control_type":"text","label":"times"}]}}︡
︠eca274af-2c43-4bde-803d-2eb1f7fe4650i︠
%md
Jednostavniji primjer.
︡0efc371b-a1e9-46db-a455-cef0924fe09f︡{"html":"<p>Jednostavniji primjer.</p>\n"}︡
︠65f83032-26a7-4159-8520-bff54254b1bd︠
%exercise
title = r"Transpose a $2 x 2$ Matrix"
A = random_matrix(ZZ,2)
question = "What is the transpose of $%s?$"%latex(A)
answer = A.transpose()
︡84ad8d70-7bbc-40c0-9250-062696557a1e︡{"interact":{"style":"None","flicker":true,"layout":[[["go",1,null],["title",11,""]],[["",12,null]],[["times",12,"<b>Times:</b>"]]],"id":"b8831c5b-5056-4870-be5e-88897a41692c","controls":[{"control_type":"button","default":"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Go&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;","label":"","width":null,"classes":"btn-large btn-success","var":"go","icon":"fa-refresh"},{"default":"<h3 class=\"lighten\">Transpose a $2 x 2$ Matrix</h3>","var":"title","classes":null,"control_type":"text","label":"title"},{"default":"","var":"times","classes":null,"control_type":"text","label":"times"}]}}︡
︠61becf3d-b858-48da-8dc5-cd3a6b216641︠









