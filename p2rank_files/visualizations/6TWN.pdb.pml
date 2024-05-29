
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
        
        load "data/6TWN.pdb", protein
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
 
        load "data/6TWN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1087,1054,1056,1074,1075,4801,4802,4803,1047,4800,4794,1072,4142,4150,4168,4169,4171,4195,4197,4198,4172,4360,4205,1077,4199,1076,4805,4810,4816,861,862,859,860,837,1084,1086,1105,832,834,869,2420,2423,4153,4154,4155,886] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [39,40,41,42,43,44,66,75,2320,4,15,2315,2316,2317,2318,2280,2287,2311,2312,2288,2290,2292,2338,2339,2341,74,511,514,515,564,565,566,547,548,544,2307,2794,2829,2796,2792,2795,2351,2819,2820,2822,2828] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1861,3358,3356,4662,1887,1888,1890,1891,1914,1916,1917,1918,1893,4654,4660,4661,144,147,110,3331,3335,3336,3328,1867,1869,1873,2078,1924,2079,2051,1874,3141,3367,3368] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [3377,3381,4603,3371,3372,3376,3399,3400,3628,4575,4604,3373,4599,4600,4601,4602,3374,3621,3624,3625,3601,3599,3602,4598] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [4739,4741,4743,4715,4713,4742,4744,4740,4738,1344,4707,1092,1340,1342,1119,1321,1318,1320,1347,1096,1098,1118,1120] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [1849,1868,1870,1875,2103,1876,1879,2101,1873,3337,2076,3312,2102,3222,3223,3194,3192,3193] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3299,3300,3303,3272,4592,3306,4634,3674,4593,3703,3704,3705,3671,2012,3305,4622,4657,2009,2013,4632] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [4772,4774,1024,4762,4293,1025,1018,1019,1022,4733,4732,1016,1390,1393,1422,1423,1418,1421,991,1015,996,1424,4797] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2112,2115,2116,375,397,424,401,396,373,400,2138,425] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        