
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
        
        load "data/6GU3.pdb", protein
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
 
        load "data/6GU3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1192,1193,1088,1095,1100,1196,1197,1199,1117,1191,140,138,157,159,101,107,1116,657,659,660,661,526,658,655,656,665,682,103,105,158,260,679,681,685,102,139,1089,113,708,704,697,711,449,1200,525,275,419] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3469,2842,2844,2846,3464,3477,3478,3470,3798,3802,3803,2524,2534,2870,2901,3765,3763,3767,3711,3715,2872,2873,2876,2877,2841,2518,2521,2517,3458,3705,3708,3825,3823,3824,3826,3706,3782,3757] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [137,139,1059,1060,1076,1077,1350,1089,113,120,123,1198,1100,1199,140,1213,1215,1220,1221,1222,1212,130,134,1339,1345] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2749,2812,3693,4286,4287,2755,4284,2754,2757,2805,2809,2810,2798,2792,2744,2751,2753,4324,4325,4326,4335,3655,4298,4336,4282,4310,3657] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2420,3493,3495,2457,3488,2421,1014,1247,1012,1251,1253,3533,2395,3557,3490,3531] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1927,1327,1328,5035,1701,1326,1700,1702,1451,1452,1918,1450,1431,1429,1400,1440] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1752,1717,1754,1755,1784,1785,4594,4590,4591,4592,4688,1747,1738,1740] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2822,3523,3524,3486,3522,3626,3628,3657,3521,3655] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [360,3352,332,357,358,359,3323,330,333,334,337,3320,3360,3359,591,596,580,313,598,607,366,578,590,575,576] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3920,3921,3958,3573,3567,3568,3570,3979,3855,3856,3882,3883,3561] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        