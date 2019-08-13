
-- translate ISBN links generated by pandoc-citeproc
-- (needs to be run *after* pandoc-citeproc)
--
-- reference to ISBN 12345 would be linked to https://worldcat.org/isbn/12345
-- my students would rather like to know availability in univerity library,
-- thus change generated URL to https://www.digibib.net/openurl/Bi10?isbn=12345
function Link(el)
    return pandoc.Link(el.content, el.target:gsub("^https://worldcat.org/isbn/(%d[0-9%-]+%d)$", "https://www.digibib.net/openurl/Bi10?isbn=%1"), el.title, el.attr)
end
