
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
        
        load "data/2PZP.pdb", protein
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
 
        load "data/2PZP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2897,3437,3359,3360,2776,3436,2392,2391,2373,2375,2376,2523,2892,2893,2936,2973,2974,3330,2946,2939,2943,2371,2372,2703,2915,2918,2919,2911,2535,2538,2539,2670,3438,3441,3442,3444,3345] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [738,1132,688,1208,571,1131,167,713,315,710,714,704,706,495,327,329,330,182,183,184,462,687,494,731,163,164,165,168,1117,1216,1102,1111,1214,1210,1213,1209,741,331] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [2669,2537,2538,2539,3443,3444,3457,3307,3344,3604,2637,2640,3459,3466,3599,3465,3467,3334,3620,3621] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1215,1229,1230,1237,1238,331,461,406,429,432,409,1117,1216,1106,1079,1080,169,328,329,330,439,1388,1389,1367] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1368,1364,1369,1371,1372,1070,1251,1252,1295,1289,1352,1346,1350,1351,1296,1353,1360,1341,1303,431,1239,1253] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3601,3602,3578,3584,3585,3592,3596,3600,3573,3612,3614,3298,3467,3481,3480,3604,3583,3582,3511,3517,3524] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1528,1522,1533,1536,2068,2069,2070,1518,1525,987,985,989,2075,2086,2071,1017] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3757,3754,3765,3767,4289,4292,4294,4306,4299,4302,3241,4295,3211,3239] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2984,2985,3081,3397,3113,3142,3114,3115,3112,3080,3396,3413] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1844,1995,1998,1704] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        