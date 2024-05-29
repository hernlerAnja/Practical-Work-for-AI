
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
        
        load "data/8P07.pdb", protein
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
 
        load "data/8P07.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3151,3152,3154,3155,3212,3315,3316,3317,3213,3211,3232,3728,3712,3709,3708,3706,3172,3171,4089,3731,4117,4118,4116,4102,4218,4215,3684,3686,3688,3689,3331,3197,4217,3551,3553,3693,4219,4220,4223,4224,4226] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [427,428,532,533,429,928,909,925,1333,1433,1305,1318,1334,1434,1442,1431,1439,1440,388,413,899,900,901,903,902,904,905,545,547,769,1435,549,1436,548,372,373,379,374,376,377,1306] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [2337,2339,2516,2517,2518,2519,2340,2342,2308,5302,5089,5090,5092,5098,2527,5136,5108,5115,5133,5109,5105,2061,2052,2305,2306,2321,2324,2325,2352,5303,2331,2335,2345,2349,2350,2314,5265,5267,5263,5264,5121,5123,5300,5119,5301,2491,5269,5270,5273,5129,5276,5311,2459,2489,2481,2485,2486,2483] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [549,1441,1458,1459,1460,548,660,400,401,403,405,565,413,391,395,396,1442,1466,1467,1468,1277,1278,1294,619] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [4062,4225,4226,3187,3444,4242,4243,4244,3403,3184,3372,3404,3197,3349,3332,3333,4250,3172,3175] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2461,2462,5473,5474,2382,2448,2380,2381,2421,2424,2445,2446,2420,2452,2456,2483,5452,5274,5275,5276,5465,5310,5311,5312,5459] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [294,297,826,317,318,812,539,879,340,342,556,557,341] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [4077,4061,4078,3179,4093,3172,3175,4090,4102,4062,4225,4226,3187,3189,3333,4060,4251,4250] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [601,632,602,641,253,629,274,873,271,820,821,872] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [5340,5344,5347,4870,4871,4873,4869,4906,5352,5356,5384,4902,4903,2326,2328,5335,4872,4898,4901,2303] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [2549,2551,2556,2568,2600,2085,2114,2117,2572,2086,2089,2087,2088,2553,5110,5137,5112,5087] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4126,4108,4109,3751,3818,4636,3792,3794] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [1825,1103,1149,1105,1852,1342,1010] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [4297,4299,2969,2971,4264,4265,4266,3398,3399,4319,2962,2990,2991,2999,3001,2981,2974,2979,4318] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        