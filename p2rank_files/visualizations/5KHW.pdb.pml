
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
        
        load "data/5KHW.pdb", protein
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
 
        load "data/5KHW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2946,3365,3350,3366,2949,3336,3001,2929,2925,3449,3450,2697,2606,2608,2924,2730,2968,3460,3442,3443,3445,3446,3453,3345,2402,2398,2400,2459,2460,2461,2397,2403,2404,2405,2399,2592,2941,2943] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3449,3450,3452,2607,2669,2696,2608,3451,2659,2660,2661,2662,2638,3631,3632,3350,3339,3340,3465,3466,3467,3473,3475,3628,3314,2417,2442,2443,2444,2445,2446,2418,2421,2435,2612,2622,2461] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [135,137,327,663,194,195,196,133,134,139,140,1074,1103,1104,1181,1182,662,1088,1187,1188,1190,343,342,687,706,737,739,138,684,688,679,713,709] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1052,1213,1365,1366,1367,395,397,1358,1188,1189,1190,343,1203,1205,342,431,399,370,394,1370,1088,1050,1077,1078,182,177,178,179,180,181,357,153,183,340,347,404,402,152,196,1211,1212,1383,1377,1051,1381] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [1522,1524,1526,942,950,976,977,979,1525,953,2167,2174,1530,2157,2162,2165] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [501,503,3213,3216,554,555,4447,2779,3191,3193,3194,3189,515,516,520,522,2777,499,3223] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [3338,3339,3979,3964,2991,2990,2993,2992,3963,3676,3675,3889,3971,3972,3976,3341] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [513,515,519,522,2778,2779,512,514,2777,2787,2780,2784] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [4002,4348,4349,4350,4003,3855,3681,3822,3823,3825,4154] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        