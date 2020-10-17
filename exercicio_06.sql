SELECT i.cd_Imovel, i.cd_Vendedor, v.nm_Vendedor, i.sg_Estado FROM Imovel as i INNER JOIN Vendedor as v ON i.cd_Vendedor = v.cd_Vendedor;

SELECT cd_Vendedor, MIN(vl_Imovel) FROM Imovel WHERE vl_Imovel > 10000; 

SELECT o.cd_Comprador, c.nm_Comprador, AVG(o.vl_Oferta), COUNT(o.vl_Oferta) FROM Oferta as o INNER JOIN Comprador as c ON o.cd_Comprador = c.cd_Comprador;

SELECT o.cd_Comprador, c.nm_Comprador, o.cd_Imovel, o.vl_Oferta FROM Oferta as o INNER JOIN Comprador as c ON o.cd_Comprador = c.cd_Comprador;

SELECT i.cd_Imovel, i.vl_Imovel, b.nm_Bairro FROM Imovel as i WHERE i.cd_Vendedor = 3 INNER JOIN Bairro as b ON i.cd_Bairro = b.cd_Bairro;

SELECT * from Imovel WHERE qt_Ofertas != 0 OR qt_Ofertas != NULL;

SELECT c.nm_Comprador, o.vl_Oferta FROM Comprador as c WHERE i.qt_Ofertas != NULL INNER JOIN Oferta as o ON c.cd_Comprador = o.cd_Comprador;

SELECT c.nm_Comprador, o.vl_Oferta FROM Comprador as c INNER JOIN Oferta as o ON c.cd_Comprador = o.cd_Comprador;

SELECT i.ds_Endereco, b.nm_Bairro, i.vl_Imovel FROM Imovel as i INNER JOIN Bairro as b ON i.cd_Bairro = b.cd_Bairro;

SELECT v.nm_Vendedor, COUNT(i.cd_Imovel) as total FROM Vendedor as v INNER JOIN Imovel as i ON v.cd_Vendedor = i.cd_Vendedor ORDER BY total;