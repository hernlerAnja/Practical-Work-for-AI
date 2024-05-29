
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
        
        load "data/8AEC.pdb", protein
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
 
        load "data/8AEC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [569,570,1472,1474,1480,1482,1484,1486,1506,669,1503,1504,566,568,1505,422,423,424,1511,1513,425,426,427,421,434,585,614,783,916,917,918,920,921,1355,988,989,1342,1471,449,385,387,1468,1470,553,554,1370,1371,448,450,404,432,383,384,389,390,393,395,405,785,938,944,925,552,1343,1648,1330,1331,1345,1314,1640,1642,1313,1315,1512,628,627,629,634,635,613,963,388,940,962] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1333,1336,1337,1882,1360,1361,1362,1338,1684,1685,1670,1179,1379,1443,1128,1878,1884,1913,1148,1904,1906,1965,1968,1095,1020,1022,1914,1017,1960,1961,1057,982,1016,983,1963,1014,1012] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [212,195,202,204,207,1526,1527,223,224,1558,1560,1580,1579] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1793,1807,1808,1811,1249,1799,2739,82,1217,1834,2733,2727,2738,2685,2716,55,59] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [285,640,889,618,647,264,649] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        