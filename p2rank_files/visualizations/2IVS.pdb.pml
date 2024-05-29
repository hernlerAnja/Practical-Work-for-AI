
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
        
        load "data/2IVS.pdb", protein
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
 
        load "data/2IVS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [152,153,159,160,201,199,1145,200,1254,1255,1256,1248,1176,1175,142,144,145,327,707,705,714,711,342,343,474,475,473,688,689,581,147,745,746,741,767,141,737,738,808,719,728] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2417,2419,2420,3016,2607,3015,2989,2992,2993,3476,3477,3363,3469,3393,3394,3019,3023,3024,2423,2425,2474,2421,2422,2472,2415,2416,2473,2435,2427,2428,2622,2623,2967] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [1406,1407,1293,1355,1113,1292,1353,1354,1396,1383,1385,1389,1524,1368,1522,1545,1523,466,1294,430,433,407,443,1279] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [1384,1385,3513,3514,3515,3330,3331,3512,2711,3500,3538,3539,3529,3532,3537,3528,3540,1405,1406,407] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [657,658,617,621,628,483,485,486,1,47,655,674,659,662,460] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [166,171,417,415,367,379,380,381,3556,3557,3535,414,408,394,395,416,2441,2446,3538,3536,3537,2690,1405] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2268,2286,2285,2305,2307,2266,2263,2761,2786,2271,2753,2273,2754,2888,2315,2316,2322,2303,2288] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [160,201,183,1256,185,342,343] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [3659,3621,3657,3656,3660,3655,3529,3528,3679,3678,400,401,3595,3627] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [1488,1522,1545,1523,1395,1383,1524,2674,1462,1525,1527,1494] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [2171,2172,2170,1930,2201,2202,1931,906,2173,936] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [2458,2459,2460,2455,2456,2457,2623,3477] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        