
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
        
        load "data/3BCE.pdb", protein
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
 
        load "data/3BCE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [782,757,758,1119,1227,750,753,1148,1149,1226,174,180,183,207,226,175,224,225,374,375,376,1235,372,724,728,710,729,595,594,749,727,176,178,359,705,526,204,206,208,1133,1234] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4757,4802,4803,4804,4952,4950,5346,5347,5339,5738,5737,5316,5324,5313,5317,4753,4754,4756,4937,5338,4752,4758,4751,5371,5372,5722,5823,4781,4782,4783,4784,4785,4786,4954,5709,5708,5294,5299,5183,5115,5295,5318,5184,5816,5815,5086,5114] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [3395,3409,2509,2659,3503,3509,3510,3511,3033,3034,3058,2486,2487,2489,2490,2491,2801,2802,2773,3502,2986,2642,2508,2981,2456,2457,2458,2459,2461,2463,2507,3005,3003,3424,3425,3000,3025,3026,3029,2982,2655,2657,2488,2965,2964] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [4777,4779,4780,4954,4774,5026,4970,5000,5686,5822,5824,5837,5839,5085,5086,5046,5044,5045,5023,5025,5051,5840,5820,5836,5964,5961,5845,5846,5847,5050] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [202,1124,1234,1256,1257,1258,1248,1249,1250,1097,199,201,392,461,457,205,375,376,462,469,471,496,1247,455,456,497,1231] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3373,3532,3533,3534,3523,3524,3525,3526,3409,2659,3508,3509,3510,2773,2675,2485,2732,2731,2733,2738,2737,2772,2745,2747,2484,2712] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [102,137,141,123,129,133,101,103,3453,3452,3166,3129,3165,3128,140,3068,3070,3103,3105,3107] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [141,143,144,145,659,236,235,237,384,3462,3459,3460] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [565,1212,600,552,1196,713,715,711,714,1165,568,1195,569] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        