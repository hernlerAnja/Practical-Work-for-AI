
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
        
        load "data/5KPL.pdb", protein
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
 
        load "data/5KPL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [198,202,252,253,204,362,364,234,235,758,764,775,769,771,753,349,778,1327,1216,1317,1319,1321,1322,1325,1326,1328,469,366,576,577,754,1204,804,1233,1232] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4032,4030,3068,3914,3942,3943,3488,3468,3474,3485,3479,3081,3083,3188,2954,3463,3514,2953,2970,2971,2972,3481,2917,2921,3483,4025,4026,4029,4033,4024,3220,3221,3926] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3677,3586,3588,3643,3676,3672,3674,3675,3650,3961,3963,3713,3550,3951,3964,3551] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3817,3819,5022,3789,3791,3792,5010,3815,3816,3841,3823,4081,4316,4314,4315,4317,4319,4320,4321,4323,4327,4324,4322,4351,5004,4080,5015,5322,5323] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [840,841,1254,1253,876,933,1003,965,966,967,878,1239,1240,1251,1245,1273,962,963,964,1276] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [153,155,640,641,9,22,23,658,36,178,375,730,263,264,259,659] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [2603,1107,1618,1109,1613,1610,1612,1611,2265,2604,2285,2291,1647,2303,1620,1623,2296] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2983,3092,3094,3075,3440,2872,2874,3076,3360,3358,2755,2741,2742,2897,2982,3377,3378] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2951,2953,4032,4031,4053,3884,3885,3886,3903,3926,4179] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [5411,5413,5141,5156,5225,5158,5220,5251,5114,5252,5249,5418,5234,5242,5218,5213] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        