program Bai12;
uses crt;
var N: byte;
    A: array[0..93] of real;
    i: integer;
    Max: real;

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
            write('Nhap gia tri thu ', i, ' cho mang: ');
            readln(A[i]);
        end;
    Max := A[1];
    for i := 2 to N do
        begin
            if (A[i] > Max) then
                begin
                    Max := A[i];
                end;
        end;
    write('Day so co dang la: ');
    for i := 1 to N do
        begin
            write(A[i]:6:2, ' ');
        end;
    writeln;
    write('So lon nhat trong day la: ', Max:6:2);
    readkey;
END.
