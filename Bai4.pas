program Bai4;
uses crt;
var A: array[1..97] of integer;
    N, i, soPhanTu: integer;


BEGIN
    clrscr;
    write('Nhap so nguyen N: ');
    readln(N);
    while (N <= 3) or (N > 100) do
        begin
            clrscr;
            writeln('Vui long nhap lai so nguyen duong N voi 1 < N < 100');
            write('Nhap lai so nguyen N: ');
            readln(N);
        end;
    randomize;
    soPhanTu := 0;
    for i := 1 to N do 
        begin
            A[i] := random(N + 1) - random(N + 1);
        end;
    for i := 1 to N do 
        begin
            if (i mod 2 = 0) then
                begin
                    if (A[i] mod 2 <> 0) then
                        begin
                            soPhanTu := soPhanTu + 1;
                        end;
                end;
        end;
    write('So cac phan tu o vi tri chan co gia tri le la: ', soPhanTu);
    readkey;
END.
