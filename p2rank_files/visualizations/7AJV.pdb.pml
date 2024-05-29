
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
        
        load "data/7AJV.pdb", protein
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
 
        load "data/7AJV.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3144,3145,1202,1203,1221,1489,1491,1498,1499,1502,1503,2739,2735,1535,1382,1450,1381,1448,1449,1360,224,226,1204,1244,1361,1232,1233,1234,1235,1237,460,462,463,464,1374,432,376,494,2750,2745,2751,2752,2740,2741,2742,201,208,211,215,216,435,437,221,1512,1492,1504,1508,1520,1521,1522,1523,1524,1525,1468,1469,3132,3169,3170] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [416,418,23,2942,2943,3931,3932,3944,3955,3946,3948,13,14,16,15,1,2,12,6,2935,2938,2944,2953,2928,3913,3914,3915,4210,4200,417,4213,4215,3930,4214,3947,405,415,4219,4223,4226,8,9,4231,4232,4233,4234,4235,4236,411,4085,4086,4087,2945,2948,2951,4071,4072,3956,3166,3168,4093,4193,4092,4162,4164,4165,3163,3191,3192,3189,3196,3197,3200,3225] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [4065,4066,4069,4062,4064,3971,3972,3555,3556,4063,3550,3554,2954,3102,3103,4072,2972,2973,2974,3099,3553,3536,3086,3548,3529,3531,3528,3526,3527,3532,3384,3385,3226,3561,2919,2920,2953,2928,2922,2923,2925,3955,3943,3583] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1260,1351,1352,246,247,359,802,812,830,831,824,826,226,1244,1358,1361,227,1353,1354,1355,887,837,1261,829,1232,859,374,375,376,495,372,807,808,805,195,245,193,201,192] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2932,33,35,204,205,200,201,207,208,209,210,211,212,202,2935,2936,2938,2939,2929,2930,2934,2937,2750,2760,2762,3128,24,401,214] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [867,1032,1714,1723] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        