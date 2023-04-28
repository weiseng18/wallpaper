function res = parse_json(filename)
    fid = fopen(filename);
    raw = fread(fid, inf);
    char_array = char(raw');
    fclose(fid);

    str = convertCharsToStrings(char_array);
    res = jsondecode(str);
end