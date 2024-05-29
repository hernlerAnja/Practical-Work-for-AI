
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
        
        load "data/7QRB.pdb", protein
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
 
        load "data/7QRB.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3029,3541,3542,3539,3543,3009,2808,2878,2551,2810,2652,2656,2659,2776,2986,2809,2990,3003,3005,2549,2550,2509,2513,3548,3550,2552,3046,3036,3072,3414,3034,3443,3444,3445,3027,3028,2501,3023,2571,2643,183,2497,2498,2499,2502,2503,2500,193,3033,3035,240,241,242,3026,179,69,70,76,82,3544] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [5363,5356,5357,5359,5130,5164,5897,5898,5162,4997,4905,4863,4867,4904,4906,5902,5904,4852,4856,4857,5006,5010,5012,5014,5344,5340,4851,4855,5426,5400,5768,5388,5896,5381,5382,5383,5797,5799,5893,5895,5377,5380,5232] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1056,1161,1025,1153,110,112,637,108,645,1055,683,657,1028,647,653,114,115,117,120,160,161,124,601,162,163,254,267,614,269,271,387,421,634,488,489,620,638,639,640,1152,1154,1150,616,613,632] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [7251,7393,7301,8292,8289,8300,8293,7526,7560,7771,7759,7773,7777,7778,7779,8195,8291,7627,7628,7776,7299,7300,7302,7406,7408,7263,7410,7740,7752,7753,7755,7784,7786,7796,7822,7792,8194,8164,8167,7253,7254,7256,7259,7247] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [217,206,214,4716,4714,4715,4703,221,222,3469,219,218,3040,3041,3457,3489,3450,3490,3491,3492] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [7099,7110,7111,7112,7356,7353,7357,7358,5394,5395,5811,7360,7361,7345,5804,5845,5823,5843,5844,5846] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [2608,2607,1080,1100,1101,1102,1109,652,2611,2610,1061,2606,2349,2362,2347,2595,2603,651] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [4949,9501,8200,8241,9488,8248,4957,4960,4961,4964,4965,4962,9486,8239,8240,8219] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [4851,4855,5390,5426,7208,7209,7221,7318,7332,7381,5389,5380,5387,5388,4925,7322,7380,7207,4854,4852] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2572,2629,2630,109,111,112,182,637,2631,108,643,646,652,644,645,2456,2459,2568,2471,2581,2582,647,650,632] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [534,533,535,431,369,393,399,400,539,540,541,585,6472,538,537,6470,365,367,584,358,361,362,583,590,392] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [4825,4922,4926,4935,4936,4984,4985,7783,7784,7786,7789,7822,7782,7785,7250,7248,4813,7321,7771,7251,7776] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4114,3732,3733,4154,4019,3737,3738,3740,3741,3727,3728,4039,4040,4112,4111] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [6518,6558,6443,6423,6136,6132,6131,6137,6141,6144,6145,6142] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [8913,8914,8912,8846,4144,8883,8884,8885,4105,4054,4061,8923] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        