
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
        
        load "data/4KZC.pdb", protein
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
 
        load "data/4KZC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3068,3069,4458,4459,3044,3055,3057,3058,4516,4517,3324,439,440,927,929,930,931,926,944,968,942,955,964,2792,5746,5749,4555,468,959,4546,4548,488,489,956,957,958,5726,2783,2784,2785,3401,3403,3354,3358,3359,3355,3357,4651,4653,4035,817,4049,4050,3045,3048,3024,3025,3323,3047,835,454,467,455,3000,469,470,3032,3033,2791,2773,2775,2786,2777,4479,4507,4509,4510,4511,4604,4596,972,973,999,969,970,971,4480,4481,4482,4484,4483,4620,4426,4643,4640,4636,4637,4036,3086,4422,4523,4506,4512,4514,4515,4547,4580,4583,4584,4585,4586,4574,503,505,992,5724,501,511] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [5348,5266,5267,5344,5346,5347,4332,4736,4760,4208,4731,5349,5352,5353,5354,5355,4331,4154,4164,4165,4185,4186,4153,4139,4350,4351,4352,5328,4629,4630,4714,4719,4733,4418,4634,4632,4713,4390,4715,5242,5243,4774] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [418,3313,3316,3314,389,417,3315,399,401,419,420,1124,846,1086,3645,3666,3643,3637,3636,1123,1115,3317,3345,4056,4013,4014,4015,4055,827,825,3320,3322,835,4059,4060,4054] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [3743,3750,3751,4237,4236,3952,3957,4096,3950,3953,3954,4086,4090,4094,4095,3977,3981,4004,4002,3724,4084] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [5794,5796,5797,5830,5880,5902,5798,5879,5883,5884,5887,2304,5911,2293,2298,2299,2300,5909,5910,5828,5829,5877,5871,5872,5819,2852,5772,2858,2865,2866,1360,1359] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [5178,5184,5186,5193,5896,5897,5390,5393,5401,5868,5918,5916,5917,5792,5821,4442,5814,5822,5848] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [2017,2018,1768,191,1855,1856,2021,2024,3189,190,207,182,183,3515,162,215,172,1774,1772] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [6212,6215,4876,4878,4853,4816,4857,4817,4818,6214,6245,5227,4788,5242,4819,5226] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [4949,4911,5075,5077,5275,4912,5074,5522,5521,5485,4783,5274,4798,4800,4801,4941,4810,5299,5300,5073,5044] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [772,852,861,864,410,1080,741,753,758,377,383,385,865,687,692,693,1079] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [5155,5442,5124,5108,5318,5339,5449,5452] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [3524,3525,2019,3155,3188,2024,3517,3480,2012] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        