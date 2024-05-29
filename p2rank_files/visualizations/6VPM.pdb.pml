
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
        
        load "data/6VPM.pdb", protein
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
 
        load "data/6VPM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3765,3763,3739,2974,3738,3735,3737,3781,3784,3786,3945,3946,3579,3936,1634,1635,1639,1636,1638,2907,2908,2909,2911,3746,3748,2910,1475,1628,3941,3942,3943,3915,3896,3892,1585,1604,1581,1589,1501,1507,1482,556,2936,2937,557,558,559,561,587,588,2939,2938,2965,2972,2961,3771,2994,2995,2996,2997,2998,2999,2399,2398,2960,2903,2896,2935,2927,2928,2934,2962,595,596,597,598,599,628,632,634,1454,625,1457,1458,1459,1460,2876,2897,2898,2899,2901,2355,2893,1461,1462,1463,563,567,3768,3769,535,536,553,570,3773,3770,3772,3774,568,1452,1268,1426,1435,1437,3818,3812,7,8,620,50,51,622,621,658,659,654,655,657] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [609,451,610,1406,1407,1408,1402,1401,294,296,467,292,298,543,1334,1306,1318,931,279,283,284,578,642,643,449,447,878,316,317,883,430,730,1335,1333,904,256,257,258,263,264,266,269,922,288,299,275,276,895,897,260,879,1436,3794,3797,1409,3798,3801,3802,542,3788,568,569,571,1422,570,541] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2949,2950,3719,2791,2792,2982,2790,3714,2983,3200,3201,3059,3205,2665,2664,2608,2775,2636,2650,2624,2627,3733,2631,2633,2643,2645,2908,2909,2911,3747,2882,2910,1491,3717,3718,3720,1490,3629,3712,3713,3617,2604,2605,2611,3646,3217,3223,3226,2606,3644,3645,1486,1487,3253,3244,2807,2849,2916,2918,3185,2912,2913,2883] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3267,3621,3622,3269,3271,3306,1517,1534,1516,1543,1545,3264,3299,4152,4115,4125,4126,3297,4077,4110,4112] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [1809,1810,1837,3845,1803,3829,1309,1310,1311,3854,3856,1763,1764,945,947,949,984,942] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        