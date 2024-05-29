
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
        
        load "data/4ZP5.pdb", protein
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
 
        load "data/4ZP5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [139,171,136,137,138,168,169,1172,1173,1255,1245,1248,1250,1251,1249,292,738,750,755,731,733,552,553,752,754,140,159,779,801,802,1149,800,141,774,771,758,764,305,192,191,307,308,734,1257,1150] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3618,3619,3622,3643,3646,3647,3719,3725,1690,3728,3775,3881,3883,3800,3865,3866,3867,3798,3801,3803,3430,3431,3442,3427,3436,3441,3885,3731,3769,3773,3768,3884,3459,3734,3693,1673,1674,1675,1687,1688,3708,3717,3642,3756,3757,3758,3764] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1119,1256,1257,1258,1106,157,162,164,1117,1118,1157,1105,1301,1308,1306,1309,1315,1359,4091,4090,1357,4104,1467,1469,3712,3714,3715,1120,1124,1341,1353,1543,1136,1137,1292] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [794,1147,1150,1590,1137,1135,1349,1350,3671,3703,1318,1616,1628,1645,1647,1648,1334,1332,1621,3704,3672,3673,3674,825,826,3697,159,160] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3100,3467,3495,2615,3494,3072,3074,3076,3572,3571,3479,3093,3080,3092,3077,2509,2512,2513,2514,2515,2632,3589,2518,2519,2528] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3621,3417,3581,3638,3601,3442,3439,3480,3622,3634,3637,3644,3645,2499,2515,2631,2632,3459,3458,3423,3422,3571,3569,3479,3478] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1394,1709,1710,1712,1714,1715,1716,1399,1402,3815,3818,1721,1757,3830,3810,4131,4132,4137,3821,4173] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [3116,3472,3148,3147,4006,4043,4044,4061,4064,4034,4037,3765,3766,4032,1287,1288,3733,3749,3751] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [3894,3902,3899,3365,3900,3914,3912,3913,3364,3398,4444,4452] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        