
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
        
        load "data/1GNG.pdb", protein
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
 
        load "data/1GNG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4193,4194,4195,3223,4196,4199,4202,3221,4085,4096,4200,4201,3331,3365,3439,3206,3219,3633,3649,3634,3651,3055,3057,3059,3061,3109,3110,3092,3091,3638,3655,4112,4113,3684,3658,4084] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [1251,1252,1334,1332,1333,579,777,1338,1335,772,358,360,1339,1341,788,790,345,247,248,249,797,794,823,1223,1235,1340,229,231,198,196,200,194] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [2428,2432,2460,2461,5146,2462,2732,2733,5230,5279,5285,5256,5257,5277,5575,5574,2415,2734,5593,5595,2427,2418,5276,5594,2486,2487,2458,2484,2730,2459,5229,5259,5260,5261,5553,5228,5258] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [3846,3847,3758,5403,5405,5406,5413,3843,3845,3842,3674,3677,3721,4118,4131,4133,4134,3745,4153,4125,4156,3882,3883,4121,3756,3720] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [2415,2395,2416,2734,5593,2713,2714,5595,5292,5293,2418,2367,2368,2393,2396,2397,2398,2399,2400,2692,2285,5320,5321,5322,5323,5319,5276,5345,5347,5348,5625,5594,5589,5584,5591,5289,5624,2733] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3231,2879,2880,3012,3502,3504,3522,2893,3232,3116,3117,3118,3119,3120,3121,3230,3611,3011,3035,3033,3213] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [257,259,150,172,173,174,18,151,19,32,255,260,256,258,353,352,749,641,643,369,371,661] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [5135,5171,5173,5160,5172,5001,4765,4761,4762,4979,4975,4970,4819,5180,5137,2229,4999,4987,4993,2220,2201,2212,2217] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [984,985,986,859,895,897,815,860,1292,1295,1021,1022,1264,1270,1272,1273] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3987,3990,4492,4486,3986,4497,4493,4494,4484,4485,4521,5232,5235,5237,5244] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [966,1002,2220,2463,2467,1003,2471,2230,2234,5145,5146,2238,5144,5173] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1195,1340,228,230,1341,1354,1355,1357,225,1212,1478,1488,1477,1362] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1958,1900,2114,2311,2138,2140,2141,1903,1904,1898,1901,2118,1893,2299,2313] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [1334,1335,772,773,503,470] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [405,653,407,479,630,654,427,488,648,649,651,721,722,650,652] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        