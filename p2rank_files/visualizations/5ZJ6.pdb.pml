
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
        
        load "data/5ZJ6.pdb", protein
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
 
        load "data/5ZJ6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [182,184,236,237,238,347,351,353,354,355,672,1224,339,687,692,583,688,709,704,565,1125,1126,1193,1194,1195,1205,1212,491,1198,1199,1200,1221,1223,1209,1210,1211,492,566,581,584,735,732,712,181,189,192,193,196,199,208,212,215,217,1255,1253,195,219,222,1090,1109,1073,1201,1229,1225,1226,739,1101,1102,740,764,206,1346,1348] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2407,2408,2903,2906,2911,3394,3395,2844,2409,2518,2522,2524,2525,2526,2360,2355,2352,2353,2393,3373,3280,3372,3364,3365,3366,3369,3370,3371,3272,3296,3297,2910,2662,3376,3392,3396,2736,2737,2858,2863,2752,2859,2883,2880,2663,2843,2510,2875,3383,3381,3519,2388,3517,2386,3426,2377,2935,2379,2390,2364,2366,2367,2370,2383,2381,3261,3273,3397,3400,3244] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1683,1682,1684,1685,3531,3548,3529,3546,1689,1695,1720,1818,1696,1722,1801,1819,3510,3513,3514,3526,3882,1827,3508,1828,3398,3399,3521,1726,1727,1723,1724,1725,3229,3400,3527,3232,3234,3649,3651,3652,3230,3635,3522,3422,3436,3441,3442,3443,3434,3517,3518,3401,3402,3404,3406,1623,1624,1648,1649,1825,1591,1832,1844,1820,1841,1842,1847] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1821,1971,1973,1974,1976,1569,1969,1766,1809,1814,1677,1675] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3848,3937,4142,4144,3980] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        