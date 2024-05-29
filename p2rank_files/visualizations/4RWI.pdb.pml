
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
        
        load "data/4RWI.pdb", protein
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
 
        load "data/4RWI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [202,242,243,203,244,204,198,201,1389,1305,1382,1383,1390,1290,200,385,758,835,197,779,796,797,800,804,807,1276,1306,399,400,401,526,634,636,633,753,1400] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2899,3614,3620,3621,3631,3613,3126,2753,2617,2766,2768,2616,2762,2770,3007,3009,3540,3131,3149,2579,2754,3145,3525,3511,3520,3541,3177,3180,3207,2575,2576,2577,2581,2580,2582,3173,3152,3170,2933,2932] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [3836,3856,3854,3788,926,4354,4355,4353,4356,4357,4360,3855,923,3837,1035,2372,2373,1040,1045,1041,1036,1069,936,2048,2049,2050,1853,1852,1029,1025] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1389,1252,1253,1254,1607,1669,1690,1477,1470,1471,1473,1251,1239,1290,1291,1526,1568,1567,1281,1240,1412,1243,1424,1688,1430] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [1843,1859,1808,1862,1842,889,1891,1892,1845,2031,2037,2016,1840,921,2042,939,943,944,928] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [1738,2233,2227,2230,2232,1703,1706,1155,2237,2240,1157,1185,1186,1187,1188,1189,2244,2248,1159] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [4041,4043,4163,4128,3905,3908,4320,4322] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        