
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
        
        load "data/4XG3.pdb", protein
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
 
        load "data/4XG3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2271,2272,2275,2320,2321,2303,2278,2822,2458,3257,3227,3256,3337,3345,2863,2871,2872,3241,3339,3340,3346,3230,2301,2819,2821,2599,2702,2269,2838,2267,2265,2843,2444,2826] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [609,145,146,147,270,610,131,284,124,125,126,128,129,489,490,1044,614,626,628,659,660,651,627,631,1015,1045,1122,1125,1127,1128,1134,415,387,1132,1133,286] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2301,2460,2291,2292,2297,2299,2543,3204,3241,3205,3342,3343,3346,3367,3231,3230,2303,2564,2598,3359,3360,3361,2569,2563,2565,3368,3369] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1647,1673,1785,1786,1640,1641,1652,1655,1656,1784,1788,1790,1791,1565,1795,1728,1729,2408,1674,2404,1781,1789,2397,2402,2399] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3287,2860,1952,2861,1746,1415,1416,1418,1420,1417,1419,1442,1383,1379,1380,1937,1960,1409,1943,1944] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        