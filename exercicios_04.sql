1 - select cd_comprador, nm_comprador, ds_email from comprador

2 - select * from imovel where vl_imovel between 110000.00 and 200000.00 or cd_vendedor = 1 order by qt_AreaUtil
 
3 - select cd_bairro, cd_cidade, sg_estado, vl_imovel from imovel where vl_imovel between 110000.00 and 200000.00 order by cd_bairro

4 - select sum(vl_oferta) from oferta where dt_oferta between '2008-01-01' and '2010-12-31'

5 - select cd_vendedor, nm_vendedor, ds_email from vendedor order by nm_vendedor desc

6 - select cd_imovel, cd_vendedor, vl_imovel from Imovel where cd_vendedor = 2

7 - select cd_imovel, cd_vendedor, vl_imovel, sg_estado from imovel where vl_imovel <= 150000.00 and sg_estado = 'RJ'

8 - select cd_imovel, cd_vendedor, vl_imovel, sg_estado from imovel where vl_imovel <= 150000.00 and cd_vendedor not like 2

9 - select cd_comprador, nm_comprador, ds_endereco, sg_estado from comprador

10 - select * from Oferta where vl_oferta between 100000.00 and 150000.00

11 - select nm_vendedor from vendedor where nm_vendedor like '_a%'

12 - select * from oferta where vl_oferta > 140000.00 order by dt_oferta desc