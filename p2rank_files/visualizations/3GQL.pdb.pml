
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
        
        load "data/3GQL.pdb", protein
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
 
        load "data/3GQL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3432,3462,3055,3083,2626,3001,3002,2486,2487,2638,2640,2488,2439,2442,2443,2449,2450,2438,2885,2883,2884,3024,3461,3048,2431,2432,2434,3018,3027,3045,2642,2772,3544,3545,3568,3546,2986,3539,3547,3446,3538,3441,3553,2804,2805,2882,3555,3557,3556,3550] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [1275,1198,1199,191,192,198,180,187,189,799,800,774,781,181,184,1295,1276,1277,1183,1281,1282,1283,199,637,559,392,394,395,396,526,229,231,755,756,380,230,772,183,558,639,1178,1169,806,809,837] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [4787,5142,4916,4949,5663,5664,5564,5657,5658,5665,5676,4948,4788,4789,4579,4580,4628,4629,4630,4785,4582,4773,5165,5147,5169,4583,5143,5168,5186,5579,5580,5026,5023,5024,5674,5656,5550,5559] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [5099,4801,4797,5120,1878,4622,2059,2055,2091,2088,2089,2090,5100,4558,5101,2000,2021,2023,1908,2067,1912,1914,1911,1940,4815,4816,4819,1906,1939,1941,1903,1907,1875,1873] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [5089,1079,1080,2035,2038,1078,2028,2030,2031,2042,1508,4418,1487,1489,1500,1501,1504,1494,1497,1499,2315,2316,5088] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [2797,539,3374,541,542,543,3377,3378,3398,3399,3400,3573,3572,3575,3576,3579,540,3561,3559,3560,3562,2795,3565] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [3217,3497,3498,4402,3218,3219,3192,3516,3093,3094,3229,3103,3499,3500] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [1861,941,2152,1850,2204,1844,1845,1625] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1111,1114,1110,1287,1099,1106,1302,1311,549,551,2821,2788,1137,2786] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [2302,2788,1137,2789,1136,2283,2284,2285,2299,2282,2814,1474,2289] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1861,2182,940,941,2181,2152,2153,2154,1844,2142,2148] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        