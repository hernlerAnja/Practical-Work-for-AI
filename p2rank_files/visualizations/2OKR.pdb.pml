
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
        
        load "data/2OKR.pdb", protein
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
 
        load "data/2OKR.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3122,3161,3162,3163,3717,3268,3270,3271,3272,3464,3718,3429,3700,3701,3703,4219,4211,4108,4217,4209,4210,4218,3758,3463,3542,4208,4213,4214,4220,4223,4241,4240,4242,3426,3736,3740,3748,3750,3722,3541,3716,4131,3751,3754,3755,3256] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [272,274,381,1324,1328,1329,1330,379,382,383,540,1323,812,537,574,575,833,1321,848,851,273,367,847,828,652,811,829,649,235,859,1352,1353,1334,1319,1320,1331,1337,1339,1316,1219,1242,869,862,865,866,861] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [854,627,1305,1306,1289,1288,642,604,612,615,630,598,1257,343,673,654,655,656,657,834,671,2706,2707,658,661,611,837,839,344] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [3723,3725,3543,3544,3545,3546,3719,3562,3547,5585,5586,3487,3550,4193,4194,4195,3531,3504,3727,3232,3233,4177,4178,5603,3219,3221] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3983,3985,5153,5154,5161,5165,4013,3981,4021,4009,4011,4017,4018,5156,5160,4413,4415,5155,4406,4422,4405] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [1536,2276,1122,1124,2274,2275,2277,2282,1094,1096,2286,1543,1527,1526,1534,1092,1129,1132] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [679,680,685,681,690,693,175,177,323,2661,2659,158,23,7,11,22,4,706,703,717,700,2684,669,2680,2701,2699,2700] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3727,3728,4177,4178,5701,3516,4146,4195,3742,3743,3725,3741] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [3044,3062,3045,2913,2914,2933,2915,3064,3568,3569,3570,5579,3582,3589,5540,3592,5538,3574] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1480,3184,1460,1466,3186,3188,3190,3225,3185,1471,1732,1733,3187,3189] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [838,843,849,856,857,839,1254,1257,1258,1273,1289,1265,1262] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3469,3472,3473,5533,5534,5554,5555,3467,3468,3474,3475,3445,3446] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [706,703,717,721,722,2635,2637,700,2661,2659,2668,690] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        