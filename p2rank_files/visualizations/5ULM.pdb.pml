
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/5ULM.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/5ULM.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [4920,3457,4691,4692,4304,4305,3702,3956,3958,3715,3716,3957,4654,4655,4690,4932,4930,4652,4658,4957,4921,3743,4332,4306,3954,3985,3986,3989,3704,3706,4324,4987,4331,4043,4956,3982,4008,4009,4010,4215,4217] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.361,0.702]
select surf_pocket2, protein and id [1869,1628,1592,1595,1589,1590,1591,923,1271,918,922,417,1581,1857,1583,1597,685,686,924,921,1894,1627,1902,1867,1272,920,951,949,1858,674,711,713,676,672,1290,1893,976,947,952,955,1891,1892,957,1181,1298,1183,1924] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.373,0.361,0.902]
select surf_pocket3, protein and id [5341,5342,5343,5344,5395,5597,5326,5898,5879,5351,5891,5892,5639,5641,5561,5562,5563,5910,5662,5663,5912,5583,5627,5659,5880,5893] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.380,0.278,0.702]
select surf_pocket4, protein and id [2830,2811,2823,2268,2278,2279,2280,2281,2288,2526,2530,2559,2573,2546,2842,2844,2812,2594,2264,2493,2495,2263,2332,2515,2571,2518,2529] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.600,0.361,0.902]
select surf_pocket5, protein and id [4473,4498,4523,4736,4719,4738,4742,4743,4746,4530,4499,4500,4521,4418,4469,4465,4467,4349,4379,4468,4739,4741,4427,4737,5021,4380,4413,5061] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.557,0.278,0.702]
select surf_pocket6, protein and id [5186,5957,5961,5967,4942,4905,4908,5971,5195,3463,4848,4882,4885,4893,4854,4859,5800,5801,5799,4898,5215,5239,5216,5964,5965,5966,3484] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.831,0.361,0.902]
select surf_pocket7, protein and id [1970,2063,2038,2040,1968,1667,1669,1959,1960,1998,1707,1708,1709,2039,1685,1690,1691,1670,1997,1665,1735] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.667]
select surf_pocket8, protein and id [1830,1879,2889,2132,2152,2153,2898,2893,2732,2899,2123,1796,1819,1820,1827,2734,1793,1785,1790,1791,1831] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.741]
select surf_pocket9, protein and id [2311,2316,1770,1772,2031,2523,2524,2525,1771,1749,1717,2339,2092,2056,2340,1742,2332] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.486]
select surf_pocket10, protein and id [5120,4805,5402,4833,4834,4835,5379,5403,5119,4812,5592,5593,5374,5094] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.514]
select surf_pocket11, protein and id [1830,2889,1842,1845,1841,423,2152,2896,2898,2164,2176,441,444,2893] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.310]
select surf_pocket12, protein and id [4544,4565,4654,4564,4290,4691,4284,4287,4298,4302,4305,4289,4670,4541,4296,4573,4574,4294,4295,4686,4689] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.435,0.361]
select surf_pocket13, protein and id [4753,5033,4730,4732,5022,5023,5167,4728,4733,4798,4797,4772,5102,5127,5101,5103,5126] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.427,0.278]
select surf_pocket14, protein and id [1626,1510,1605,1606,1607,1256,1264,1511,1250,1253,1254,1255,1271,1481,1502,1268] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.667,0.361]
select surf_pocket15, protein and id [1680,1683,1435,1437,1656,1679,1460,1458,1406,1408,1674,1315,1409,1467,1488,1462] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.608,0.278]
select surf_pocket16, protein and id [1405,1406,1408,1410,1416,1417,1674,1676,1678,1345,1346,1958,1409] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.894,0.361]
select surf_pocket17, protein and id [5755,5827,5921,5335,5367,5941,5810,5781] 
set surface_color,  pcol17, surf_pocket17 
   
        
        deselect
        
        orient
        