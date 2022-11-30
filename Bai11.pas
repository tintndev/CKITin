program Bai10;
uses crt;
var N: byte;
    A: array[1..94] of integer;
    i: integer;

BEGIN
    clrscr;
    write('Nhap so nguyen bat ki: ');
    readln(N);
    while (N <= 5) or (N >= 100) do
        begin
            clrscr;
            writeln('Vui long nhap so nguyen trong doan tu 1 den 100');
            write('Nhap lai so nguyen: ');
            readln(N); 
        end;
    for i := 1 to N do
        begin
            A[i] := random(N + 1) - random(N + 1);
        end;
    write('Cac vi tri chua so le trong day la: ');
    for i := 1 to N do
        begin
            if (A[i] mod 2 <> 0) then
                begin
                    write(i, ' ');
                end;
        end;
    readkey;
END.
