
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
        
        load "data/5KU8.pdb", protein
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
 
        load "data/5KU8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [437,439,438,1295,1323,1324,934,1322,543,914,918,374,376,1308,558,559,423,557,893,895,778,1421,1423,1424,1425,555,542,890,892,894,889,891,541,777,899,779,1426,1432,962,937,372,378,379,373,377] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [3211,3212,3146,3147,3148,3150,3151,3317,3712,4116,4117,3728,3731,4089,4118,3332,3688,3684,3686,3213,3315,3316,3329,3331,3683,3551,3553,3693,3333,4226,4219,4220,4215,4218,4217] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [3086,3087,3581,3098,3254,3268,3269,3267,3572,3570,3573,3277,3309,3290,3691,1900,1931,1933,1935,1929,1930,1884,1885,1886,1887,1949,2016,2018,1891,1880,1888] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3333,4224,4225,4226,4102,3197,3184,3185,3180,3187,4250,4251,4252,4061,4062,4376,4377,3444,4242,4243,4244,3403,3372,3404,3371,3331,3349,3171,3158,3159,3167,3168,4077,4078,4379,4380] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1457,1458,1448,1449,1450,1456,1267,1268,1431,1432,406,410,411,413,415,412,598,422,575,558,670,423,1424,597,629,397,401,1590,1284,1283,1296,1308,384,385,439,394,393,1583,1582] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [1901,1839,1840,1289,1290,3036,1609,1611,1897,1898,3040,1894,1895,1892,1896,3037,3041,3042,3043,1298,1297,1299,1300,1301,971,3054,1282,1292,1291,1590,1284,1623,1624,1589] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2941,2942,2940,1963,1965,1964,1958,2937,1943,1951,3483,3484,1598,1599,1954,1957,3005,3010,3012,3014,3017,3462,3494] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2986,2987,4264,4265,4266,4271,4297,4299,4337,4316,4317,4318,2995,2997,2977,2958,2989,2967,2975,2965] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [1202,2620,2623,71,81,2632,1200,1736,1737,1746,1738,79,82,70,2622,1747,1773,1176] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4808,4807,4843,5163,4681,4715,4680,4701,4679,4707,4708] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [1315,1821,1332,1848] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [208,210,203,193,184,191,201,215,220,221,222,211,209,212,213,1524,1525,1503,1505] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        