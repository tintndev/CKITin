program Bai9;
uses crt;
var N, soCapSo: byte;
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
    soCapSo := 0;
    for i := 1 to N do
        begin
            if (A[i] = A[i + 1]) then
                begin
                    soCapSo := soCapSo + 1;
                end;
        end;
    write('Co ', soCapSo, ' cap so voi 2 gia tri lien ke bang nhau');
    readkey;
END.
