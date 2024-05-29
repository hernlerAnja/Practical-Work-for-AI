
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
        
        load "data/5CLP.pdb", protein
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
 
        load "data/5CLP.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3220,3221,3222,3340,3342,3206,4251,3700,3701,3703,3705,3706,3704,4240,4243,4244,4245,4248,3702,3162,3163,3165,3167,3168,3176,4110,4119,4138,4140,3747,4142,3745,3159,3156,3157,3160,4242,4106,4111,4112,3324,3325,3729,3560,3562] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [434,550,552,923,924,925,926,554,1414,1420,1422,418,1281,1283,537,538,1311,1313,1280,1282,967,965,950,1309,1277,780,782,1411,1413,1415,1416,1290,1419,377,380,373,374,375,379,432,433,369,371] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [4097,3772,4100,4099,3768,3769,3770,3771,3950,3906,4643,4676,4125,4151,4148,4124,3747,3800,3835,3836,4674,4675] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [1270,1295,1319,1271,1297,1322,1852,1853,973,975,1005,1006,1007,972,978,979,1851,1048,1049,1044,1077,1080,1075,1085,1121,1826,1091] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [554,1421,1422,418,1281,636,637,408,643,673,578,1250,1265,1266,1290,1438,1446,1448,1447,392,389,380,404,582,401,403,405,575] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [3167,3176,3177,4110,4119,4079,4095,3342,3205,3206,4251,4250,3191,3192,3193,3189,3196,3358,3362,3423,4267,4268,4275,4277,3416,3417,3415,4276,3180] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [246,247,248,270,682,651,652,654,614,615,616,642,644,645,3518,3519,269,840,617,592,619,893,894,874,895,3525] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [3434,3396,3397,3431,3432,3034,3036,3055,3057,3422,3424,3462,3674,3621,3622,3654,3675,3372,3054] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [2849,2826,4560,4568,4554,4569,4572,2833,5413,5457,5451,5456,5434,3987,2860,4013] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [2967,2979,2984,2995,2996,3005,2974,2976,4324,4296,4322,4343,4290,4291] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3332,3613,3680,3123,3124,3125,3077,3078,3079,3080,3630,3348,3349,3350,3665,3668,3101,3100] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [1737,1743,1751,1752,1755,54,58,61,2630,2636,2639,2641,2619,71,1184,1186,1778] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [4102,4445,4446,4093,4431,4409,4725,4726,4729,4433,4731,4723,4665,4667,4718,4720,3773,4100,4101] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [544,900,292,565,337,335,336,567,569,833,287,289,290,291,313,316,311,312] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [530,514,801,802,810,498,475] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        